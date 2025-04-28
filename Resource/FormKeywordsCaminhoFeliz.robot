*** Settings ***

Library    SeleniumLibrary
*** Variables ***
${URL}           http://localhost:3000/
${FORMNAME}      THIAGOQA
${FORMPOSITION}  TESTADOR
${FORMIMAGE}     https://picsum.photos/200/300
${LIST}          //div[@class='lista-suspensa']//select[1]
${OPTIONS}       //option[contains(.,'Programação')]
${BUTTON}        id=form-botao
${COLLABORATOR}  class:colaborador

*** Keywords ***
Dado que o site está aberto
    Open Browser    ${URL}    chrome

Quando preencho o formulário
    Input Text    id=form-nome    ${FORMNAME}
    Input Text    id=form-cargo    ${FORMPOSITION}
    Input Text    id=form-imagem    ${FORMIMAGE}
    Click Element    ${LIST}
    Sleep   2s
    Click Element    ${OPTIONS}
    Click Element    ${BUTTON}

Então o colaborador deve ser criado
    Sleep   2s
    Element Should Be Visible    ${COLLABORATOR}
