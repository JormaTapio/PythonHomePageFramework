*** Settings ***
Documentation  Vincit - Search Page


Library   SeleniumLibrary

*** Variables ***
${searchTxt}  dataclass
${constantTxt}  Search Results
  
*** Keywords ***
Python Search Page Results
    [Arguments]   ${text}  
    Wait Until Page Contains    ${constantTxt}
    Page Should Contain  ${constantTxt}
    Page Should Contain  ${text}
    
