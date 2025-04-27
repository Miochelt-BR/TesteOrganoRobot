*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           http://localhost:3000/
${FORMNAME}      ThiagoQA 
${FORMPOSITION}  Testador 
${FORMIMAGE}     https://picsum.photos/200/300
${LIST}           //div[@class='lista-suspensa']//select[1]
${OPTIONS}        //option[contains(.,'Programação')]
*** Test Cases ***
Open Organo Website
    Open Browser    ${URL}    chrome

Fill Out Form
    Open Browser    ${URL}    chrome
    Input Text    id=form-nome        ${FORMNAME}
    Input Text    id=form-cargo      ${FORMPOSITION}
    Input Text    id =form-imagem     ${FORMIMAGE}
    Click Element  ${LIST}
    Click Element  ${OPTIONS}
