*** Settings ***
Library      SeleniumLibrary
Library      FakerLibrary
Resource     ./util.py

*** Variables ***
# Login
${TXT_EMAIL}                    cicero.tester@gmail.com
${TXT_EMAIL_INCORRECT}          cicero.naoexiste@gmail.com
${TXT_PASS}                     incrivel123 
${BASE_URL}                     http://www.automationpractice.pl/index.php
${INPUT_EMAIL}                  xpath=//input[@id='email']
${INPUT_PASS}                   xpath=//input[@id='passwd'] 
${BTN_SIGN_IN}                  xpath=(//a[normalize-space()='Sign in'])[1]
${BTN_SIGN_IN_SUBMIT}           xpath=//button[@id='SubmitLogin']
${TXT_NOME_LOGADO}              xpath=//span[normalize-space()='Cicero Marcelo da Silva']
${TXT_MSG_FALHA}                xpath=//li[normalize-space()='Authentication failed.']

#Cadastrar usuario
${INPUT_EMAIL_CREATE}           xpath=//input[@id='email_create']
${TXT_EMAIL_FAKER}              cicero.tester+006@gmail.com
${TXT_EMAIL_EXISTE}             cicero.tester+03@gmail.com
${BTN_CREATE_ON_ACCOUNT}        xpath=//button[@id='SubmitCreate']
${TITLE_ESCOLHA}                xpath=(//label[normalize-space()='Mr.'])[1]
${INPUT_FIST_NAME}              xpath=//input[@id='customer_firstname']                
${TXT_FIST_NAME}                Cicero 
${INPUT_LAST_NAME}              xpath=//input[@id='customer_lastname']
${TXT_LAST_NAME}                Tester da Silva
${INPUT_PASSWORD_NAME}          xpath=//input[@id='passwd']         
${TXT_PASSWORD_NAME}            pwd123
${INPUT_DAY_BIRTH}              xpath=//select[@name="days"]/option[@value=16]               
${INPUT_MONTHS_BIRTH}           xpath=//select[@name="months"]/option[@value=11]     
${INPUT_YEARS_BIRTH}            xpath=//select[@name="years"]/option[@value=1979]      
${RADIO_BUTTON}                 xpath=//input[@id='newsletter']             
${BTN_REGISTER}                 xpath=//span[normalize-space()='Register']
${LBL_MSG_SUCESSO}              xpath=//p[@class='alert alert-success'] 
${LBL_MSG_INSUCESSO}            xpath=//div[@id='create_account_error']

#Compra
${LBL_WOMEN}                    xpath=//a[@title='Women']
${BTN_CATALOGO}                 xpath=(//div[@class='product-image-container'])[1]
${INPUT_SIZE}                   xpath=//select[@name="group_1"]/option[@value=2]  
${ADD_TO_CART}                  xpath=//span[normalize-space()='Add to cart']
${BTN_PROCEED_TO_CHECKOUT}      xpath=//span[normalize-space()='Proceed to checkout']
${BTN_PRO_TO_CHECKOUT}          xpath=(//span[contains(text(),'Proceed to checkout')])[2]

#Preencher Endereço

${TXT_COMPANY}                  CAAA
${TXT_ADRESS1}                  DONA ROSA IORIO, 409 4
${TXT_ADRESS2}                  São Paulo/SP, Alabama 99999
${TXT_CITY}                     São Paulo

 ${TXT_ZIP_CODE}                99999
${TXT_HOME_PHONE}               114848456456
${TXT_MOBILE_PHONE}             11987159827
${TXT_INFORMATION}              Informacao para teste

#Endereço
${BTN_PROCEED_TO_CHECKOUT_ADDRESS}      xpath=//button[@name='processAddress']

#Envio
${BTN_PROCEED_TO_CHECKOUT_CARRIER}      xpath=//button[@name='processCarrier']//span[contains(text(),'Proceed to checkout')]
${CKEC_CGV}                             xpath=//label[contains(text(),'I agree to the terms of service and will adhere to')]

#Pagamento
${PAY_BY_BANK_WIRE}                     xpath=//a[@title='Pay by bank wire']

${BTN_CONFIRM_MY_ORDER}                 xpath=//span[normalize-space()='I confirm my order']//i[@class='icon-chevron-right right']

${LBL_MSG_SUCESSO_COMPRA}               xpath=//p[@class='alert alert-success']

${LBL_MSG_SUCESSO_CARRINHO}             xpath=//h2[normalize-space()='Product successfully added to your shopping cart']

#${INPUT_COMPANY}                xpath=//*[@id="company"]
#${INPUT_ADRESS1}                xpath=//input[@id='address1']
#${INPUT_ADRESS2}                xpath=//input[@id='address2']
#${INPUT_CITY}                   xpath=//input[@id='city']
#${INPUT_STATE}                  xpath=//select[@name="id_state"]/option[@value=2] 
#${INPUT_ZIP_CODE}               xpath=//input[@id='postcode']
#${INPUT_HOME_PHONE}             xpath=//input[@id='phone']
#${INPUT_MOBILE_PHONE}           xpath=//input[@id='phone_mobile']
#${INPUT_INFORMATION}            xpath=//textarea[@id='other']
#${BTN_SAVE}                     xpath=//span[normalize-space()='Save']
