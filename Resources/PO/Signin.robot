*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SIGNIN_HEADER_LABEL} =        Login
#${SIGNIN_EMAIL_TEXTBOX} =       id=email-id
${SIGNIN_EMAIL_TEXTBOX} =       //input[@id='email-id']
#${SIGNIN_PASSWORD_TEXTBOX} =    id=password
${SIGNIN_PASSWORD_TEXTBOX} =    //input[@id='password']
${SIGNIN_SUBMIT_BUTTON} =       id=submit-id



*** Keywords ***
Verify Page Loaded
    Wait Until Element Contains    xpath=//h2[contains(@class, 'text-center')]    Login    timeout=10s

Login With Valid Credentials
    [Arguments]    ${Email}      ${Password}
 #   Wait Until Element Is Visible    ${SIGNIN_EMAIL_TEXTBOX}    timeout=10s
    Fill "Email" Field          ${Email}
    Fill "Password" Field       ${Password}
    Click "Submit" Button

Fill "Email" Field
    [Arguments]    ${Email}
    input text                  ${SIGNIN_EMAIL_TEXTBOX}     ${Email}
  #  <input id="email-id" name="email-name" type="email" class="form-control" placeholder="Enter email" required="">

Fill "Password" Field
    [Arguments]     ${Password}
 #   input text                  id=password     ${Password}
    input password              ${SIGNIN_PASSWORD_TEXTBOX}     ${Password}

Click "Submit" Button
    click button                id=submit-id



