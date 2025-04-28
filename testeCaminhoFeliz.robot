*** Settings ***
Library    SeleniumLibrary
Resource    Resource/FormKeywordsCaminhoFeliz.robot




*** Variables ***
${URL}           http://localhost:3000/
${FORMNAME}      THIAGOQA
${FORMPOSITION}  TESTADOR
${FORMIMAGE}     https://picsum.photos/200/300
${LIST}          //div[@class='lista-suspensa']//select[1]
${OPTIONS}       //option[contains(.,'Programação')]
${BUTTON}        id=form-botao
${COLLABORATOR}  class:colaborador

*** Test Cases ***
Cenário: Cadastro de colaborador
    Dado que o site está aberto
    Quando preencho o formulário
    Então o colaborador deve ser criado
