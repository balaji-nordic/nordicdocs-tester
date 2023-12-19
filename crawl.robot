*** Settings ***
Library           Browser

*** Variables ***
${URL}            https://docs.nordicsemi.com/

*** Test Cases ***
Crawl and find errors
    Crawl Site   ${URL}
	...    max_number_of_page_to_crawl=1000
	...    page_crawl_keyword=print_title

*** Keywords ***
print_title
	${title}=    Get Title
	Log to Console    Title of page crawled is ${title}



