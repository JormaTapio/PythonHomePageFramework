*** Settings ***
Documentation  Vincit - Testing Python WWW Page

#Resource  ../Resource/AllResources.robot

Library   SeleniumLibrary
Library    Collections

*** Variables ***
${url}  https://docs.python.org/3/
${quickSearch}  //a[@href='genindex.html' and @accesskey='I']//parent::li//parent::ul//child::input[@placeholder='Quick search' and @name='q']
${submitBtn}  //a[@href='genindex.html' and @accesskey='I']//parent::li//parent::ul//child::input[@type='submit']

@{pythonVersionWebElement}  ["//div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/3.12/']", "//div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/3.11/']", "//div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/3.10/']", "//div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/3.9/']", "//div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/3.8/']", "//div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/3.7/']", "//div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/3.6/']", "//div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/3.5/']", "//div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/2.7/']"]

*** Keywords ***
Go To Python Page
   Open Browser    ${url}    chrome
   Maximize Browser Window

Search Text
    [Arguments]    ${text} 
    Input Text    ${quickSearch}    ${text}
    Click Button    ${submitBtn}

Select Python Version
    [Arguments]    ${link}
    Click Element  ${link} 
