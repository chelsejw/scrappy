from django.core.management.base import BaseCommand
from bs4 import BeautifulSoup
import urllib.request
import re
from scraping.models import Job, Tech

#specify driver path
class Command(BaseCommand):
    help = "collect jobs"
    def handle(self, *args, **options):
        def get_soup(url):
            source = urllib.request.urlopen(url).read()
            soup = BeautifulSoup(source, 'html.parser')
            return soup

        def grab_job_links(soup):
            urls = []
            print(f'Getting links from soup.')
            for link in soup.find_all('h2', {'class': 'title'}):
                url = 'https://sg.indeed.com' + link.a.get('href')
                urls.append(url)
            print(f"Got {len(urls)} links")
            return urls

        # def get_num_of_items(soup):
        #     string = soup.find(name="div", attrs={'id': 'searchCountPages'}).get_text()
        #     item_count = re.search("(\d*,*\d*) jobs", string)
        #     count = re.sub("[^\d]", "", item_count.group())
        #     return count
       

        def grab_job_info(url):
            if Job.exists(url):
                return print("Job already exists")
            else:
                soup = get_soup(url)
                print(f"Getting job info...")
                desc = ""
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
                stack = set()

                keywords = Tech.list_all()

                for word in keywords:
                    if word['name'] == 'Golang':
                        if re.search("Go(\W|lang)", desc) != None: stack.add(word['name'])
                        #Capital G + o followed by 'lang' OR any non-word character (e.g. commas, fullstops) 
                    elif word['name']== "Java":
                        if re.search("Java\W", desc) != None: stack.add(word['name'])
                        #Capital J + ava followed by anything that's not a word
                    elif word['name'] == "C":
                        if re.search("\WC[^\+#\w]", desc) !=None: stack.add(word.name)
                        #capital C followed by a character that is not a +, #, or a word
                    elif word['name'] == ".NET":
                        if re.search("\W\.NET", desc) != None: stack.add(word['name']) 
                        # a ".NET" string that is not preceded by a word (so can be whitespace, punctuation, etc.)
                    elif word['name'] == 'Rust':
                        if re.search("Rust", desc) != None: stack.add(word['name']) 
                    elif word['name'] == 'Scala':
                        if re.search("\WScala\W", desc) != None: stack.add(word['name'])
                    else:
                        if desc.lower().find(word['name'].lower()) != -1: stack.add(word['name'])

                job =  {'title': title, 'company': company, 'stack': stack, 'link': url}
                print("Found", job)

                new_job = Job(
                    link=job['link'],
                    company=job['company'],
                    title=job['title']
                )
                
                new_job.save()
                print("saved new job")

                for tech in job['stack']:
                    new_job.stack.add(Tech.objects.get(name=tech))
                
                print(f"Added {job['title']} from {job['company']}")

                return job

        def add_all_jobs(urls):
            for url in urls:
                try:
                    grab_job_info(url)
                except:
                    print(f"Error getting info from {url}")
                    continue

        def get_all_job_links():
            print('Getting all job links....')
            links = []
            print('Defined links')
            i=0
            while i <650:
                base_url = f'https://sg.indeed.com/jobs?q=software+engineer&l=Singapore&radius=10&sort=date&fromage=14&start={i}'
                try:
                    soup = get_soup(base_url)
                    links += grab_job_links(soup)
                    print(f"Successfully added links starting from item #{i}. Currently have {len(links)} links.")
                except:
                    print('Got some error.')
                    continue
                i += 10

            return links

            
        def process():
            print('Beginning the process of scr*ping! This should be legal!')
            links = get_all_job_links()
            f = open('errors.js', 'a')
            add_all_jobs(links)

        process()

        self.stdout.write( 'job complete' )
