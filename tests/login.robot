*** Settings ***
Documentation            Login tests

Resource    ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Test Cases ***
Deve logar com sucesso
    Go to login page
    Submit Credentials    papito@gmail.com    vaibrasil
    User Logged In


Não deve logar com senha incorreta
    Go to login page
    Submit Credentials        papito@gmail.com    abc123
    Toast Message Shoud Be    Credenciais inválidas, tente novamente!







