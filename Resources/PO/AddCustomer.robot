*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${ADDCUSTOMER_HEADER_LABEL} =      Add Customer
${ADDCUSTOMER_SUBMIT_BUTTON} =      Submit
${ADDCUSTOMER_EMAIL_TEXTBOX} =      id=EmailAddress
${ADDCUSTOMER_FIRST_NAME_TEXTBOX} =      id=FirstName
${ADDCUSTOMER_LAST_NAME_TEXTBOX} =      id=LastName
${ADDCUSTOMER_CITY_TEXTBOX} =      id=City
${ADDCUSTOMER_STATE_DROPDOWN} =      id=StateOrRegion
${ADDCUSTOMER_GENDER_RADIO} =      gender
${ADDCUSTOMER_PROMO_CHECKBOX} =      name=promos-name


*** Keywords ***
Verify Page Loaded
    wait until page contains        ${ADDCUSTOMER_HEADER_LABEL}

Add New Customer
    Fill Customer Field
    Click Submit Button


Fill Customer Field
    input text                  ${ADDCUSTOMER_EMAIL_TEXTBOX}     Nguyenhuan@gmail.com
    input text                  ${ADDCUSTOMER_FIRST_NAME_TEXTBOX}        Huan
    input text                  ${ADDCUSTOMER_LAST_NAME_TEXTBOX}         Nguyen
    input text                  ${ADDCUSTOMER_CITY_TEXTBOX}              HoChiMinh
    select from list by value   ${ADDCUSTOMER_STATE_DROPDOWN}    TX
    select radio button         ${ADDCUSTOMER_GENDER_RADIO}   female
    select checkbox             ${ADDCUSTOMER_PROMO_CHECKBOX}

Click Submit Button
    click button            ${ADDCUSTOMER_SUBMIT_BUTTON}


