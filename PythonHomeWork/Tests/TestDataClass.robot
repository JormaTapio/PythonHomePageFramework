*** Settings ***
Documentation  "Python dataclass tests"
Library   SeleniumLibrary
Resource  ../PythonPOM/MainPage.robot
Resource  ../PythonPOM/SearchPage.robot


*** Variables ***
${searchTxt}  dataclass
${foundDataclassTxt}  Search finished, found
${notFoundDataclassTxt}  Your search did not match any documents.

${pythonVersionLnk3.10}  //div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/3.10/']
${pythonVersionLnk3.7}  //div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/3.7/']
${pythonVersionLnk3.6}  //div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/3.6/']

*** Test Cases ***
Python - Testing Dataclass
    [documentation]  Ready to Testing Dataclass
    [tags]  Regressio  
 
    Dataclass Documentation Testing  ${pythonVersionLnk3.10}  ${foundDataclassTxt}
    Dataclass Documentation Testing  ${pythonVersionLnk3.7}  ${foundDataclassTxt}
    Dataclass Documentation Testing  ${pythonVersionLnk3.6}  ${notFoundDataclassTxt}

*** Keywords ***
Dataclass Documentation Testing
    [Arguments]    ${versiontext}   ${foundText}
    Go To Python Page
    Select Python version  ${versiontext} 
    Search Text   ${searchTxt}
    Python Search Page Results  ${foundText}
    Sleep  3
    Close Browser
