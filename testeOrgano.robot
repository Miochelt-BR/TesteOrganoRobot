*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           http://localhost:3000/
${FORMNAME}      ThiagoQA
${FORMPOSITION}  Testador
${FORMIMAGE}     https://picsum.photos/200/300
${LIST}          //div[@class='lista-suspensa']//select[1]
${OPTIONS}       //option[contains(.,'Programação')]
${BUTTON}        id=form-botao
${COLLABORATOR}    class:colaborador

*** Test Cases ***
Abrir Website
    Open Browser    ${URL}   chrome

Preencher Formulário
    Open Browser    ${URL}   chrome
    Input Text    id=form-nome    ${FORMNAME}
    Input Text    id=form-cargo    ${FORMPOSITION}
    Input Text    id=form-imagem    ${FORMIMAGE}
    Click Element    ${LIST}
    Sleep   10S
    Click Element    ${OPTIONS}
    Click Element    ${BUTTON}
    Sleep   10s
    Element Should Be Visible    ${COLLABORATOR}
