***Settings***
Resource    base.robot

Test Setup      New Session
Test Teardown   End Session

***Test Cases***
Cadastro com sucesso
    Go To           ${url}/contato
    Input text      id=input_comp-k8cl409c          Theo Nicolas
    Input text      id=input_comp-k8cl409e1         theonicolas@gmail.com
    Input text      id=input_comp-k8cl409g          11988776655
    Input text      id=textarea_comp-k8cl409h2      Success test
    Click element   class:_1fbEI

    Page Should Contain           Obrigado pelo envio!

Cadastro com Email inválido
    Go To           ${url}/contato
    Input text      id=input_comp-k8cl409c          Theo Nicolas
    Input text      id=input_comp-k8cl409e1         theonicolas.com
    Input text      id=input_comp-k8cl409g          11988776655
    Input text      id=textarea_comp-k8cl409h2      It's should be a error test.
    Click element   class:_1fbEI

    Page Should Contain           Insira um endereço de email válido.    #it's a bug! weird span

#   robot -d ./log tests/treinoValidacaoinf.robot
#tag   robot -d ./log -i invalidtests tests