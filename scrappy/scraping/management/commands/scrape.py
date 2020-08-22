from django.core.management.base import BaseCommand
from bs4 import BeautifulSoup
import urllib.request
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

        def get_num_of_items(soup):
            string = soup.find(name="div", attrs={'id': 'searchCountPages'}).get_text()
            import re
            item_count = re.search("(\d*,*\d*) jobs", string)
            count = re.sub("[^\d]", "", item_count.group())
            return count

        def grab_job_info(url):
            soup = get_soup(url)
            print(f"Getting job info...")

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

            keywords = ['Python', 'C++', 'Go', 'Golang', 'Ruby', 'JavaScript', 'React', 'Java', 'Angular', 'Vue', 'SQL', 'GraphQL', 'Mongo', 'Ruby', 'Bootstrap', 'Django', 'Rails', 'Node', 'Firebase']

            for word in keywords:
                if word=='Go':
                    if desc.lower().find(word)!= -1:
                        stack.append(word)
                elif desc.lower().find(word.lower())!= -1:
                    stack.append(word)

            job =  {'title': title, 'company': company, 'stack': stack, 'link': url}
            print("Found", job)

            try:
                new_job = Job(
                    link=job['link'],
                    company=job['company'],
                    title=job['title']
                )

                print('New job is', new_job)

                new_job.save()

                for tech in job['stack']:
                    try:
                        new_job.stack.add(Tech.objects.get(name=tech))
                    except:
                        continue                
                
                print(f"Added {job['title']} from {job['company']}")

            except:
                print('Already exists or there was a problem..')
                return

            return job

        def add_all_jobs(urls):
            for url in urls:
                try:
                    grab_job_info(url)
                except:
                    print(f"Error getting info from {url}")
                    return

        def get_all_job_links():
            print('Getting all job links....')
            links = []
            print('Defined links')
            i=0
            ('i=0')

            while i < 40:
                base_url = f'https://sg.indeed.com/jobs?q=software+engineer&l=Singapore&radius=10&sort=date&fromage=14&start={i}'
                i+=10
                try:
                    soup = get_soup(base_url)
                    links += grab_job_links(soup)
                    print(f"Successfully added links starting from item #{i}. Currently have {len(links)} links.")
                except:
                    print('Got some error.')
                    continue
            return links

            
        def process():
            print('Beginning the process of scr*ping! This should be legal!')
            links = get_all_job_links()
            add_all_jobs(links)

        process()
        self.stdout.write( 'job complete' )
