from bs4 import BeautifulSoup

import urllib.request
import re
#specify driver path

def get_soup(url):
    source = urllib.request.urlopen(url).read()
    soup = BeautifulSoup(source, 'html.parser')
    print(f'Getting soup from {url}')
    return soup

def grab_job_links(soup):
    urls = []
    print(f'Getting links from soup.')
    for link in soup.find_all('h2', {'class': 'title'}):
        url = 'https://sg.indeed.com' + link.a.get('href')
        urls.append(url)
    print(f"Got {len(urls)} links")
    return urls

def get_num_of_items(soup):
    string = soup.find(name="div", attrs={'id': 'searchCountPages'}).get_text()
    item_count = re.search("(\d*,*\d*) jobs", string)
    count = re.sub("[^\d]", "", item_count.group())
    return count

def grab_job_info(url):
    soup = get_soup(url)
    print(f"Getting job info from {url}")

    try:
        title = soup.find(name='h1', attrs={'class': "jobsearch-JobInfoHeader-title"}).get_text()
    except:
        try:
            title = soup.find(name='h2', attrs={'class': 'headerBannerTitle'}).get_text()
        except:
            title = "N/A"

    try:
        company_div = soup.find(name='div', attrs={'class': "icl-u-lg-mr--sm icl-u-xs-mr--xs"})
        company = company_div.find(name='a').get_text()
    except:
        try:
            company= soup.find(name='div', attrs={'class': "icl-u-lg-mr--sm icl-u-xs-mr--xs"}).get_text()
        except:
            company = "N/A"
    try:
        desc = soup.find(name='div', attrs={'id': 'jobDescriptionText'}).get_text()
    except:
        try:
            desc = soup.find(name='div', attrs={'class': 'jobDetail'}).get_text()
        except:
            desc = "N/A"
    stack = []

    keywords = ['Python', 'C++', 'Go', 'Ruby', 'JavaScript', 'React', 'Java', 'Angular', 'Vue', 'SQL', 'GraphQL', 'Mongo', 'Ruby', 'Bootstrap', 'Django', 'Rails', 'Node', 'Firebase']

    for word in keywords:
        if word=='Go':
            if re.search("Go(\W|lang)",desc)!= None:
                stack.append("Golang")
        if word=="Java":
            if re.search("Java\W", desc)!= None:
                stack.append("Java")
        elif desc.lower().find(word.lower())!= -1:
            stack.append(word)

    job =  {'title': title, 'company': company, 'stack': stack, 'link': url}
    print("Found", job)
    return job

def get_all_info(urls):
    data = []
    for url in urls:
        info = grab_job_info(url)
        data.append(info)
    return data

links = []
i=0

while i < 650:
    base_url = f'https://sg.indeed.com/jobs?q=software+engineer&l=Singapore&radius=10&sort=date&fromage=14&start={i}'
    i+=10
    try:
        soup = get_soup(base_url)
        links += grab_job_links(soup)
    except:
        continue

data = get_all_info(links)

import json

with open('data.js', 'w') as outfile:
    json.dump(data, outfile)



