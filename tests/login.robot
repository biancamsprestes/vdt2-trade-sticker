*** Settings ***
Documentation            Login tests

Resource    ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Test Cases ***
#CT01
Deve logar com sucesso
    Go to login page
    Submit Credentials    papito@gmail.com    vaibrasil
    User Logged In

#CT02
Não deve logar com senha incorreta
    Go to login page
    Submit Credentials        papito@gmail.com    abc123
    Toast Message Shoud Be    Credenciais inválidas, tente novamente!

#CT03
Deve exibir notificacao toaster se a senha nao for preenchida
    Go to login page
    Submit Credentials whidhout password    papito@gmail.com
    Toast Message Shoud Be    Por favor, informe a sua senha secreta!

#CT04
Deve exibir notificacao toaster se o email nao for preenchida
    Go to login page
    Submit Credentials whidhout email          vaibrasil 
    Toast Message Shoud Be    Por favor, informe o seu email!

#CT05
Deve exibir notificacao toaster se o email e a senha nao forem preenchidos
    Go to login page
    Submit Credentials whidhout email and password
    Toast Message Shoud Be    Por favor, informe suas credenciais!








