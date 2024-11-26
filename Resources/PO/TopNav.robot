*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary


*** Variables ***
${TOPNAV_SIGIN_LINK} =      id=SignIn
${TOPNAV_SIGOUT_LINK} =     //a[text()='Sign Out']



*** Keywords ***
Click "Sign In" Link
    click link    ${TOPNAV_SIGIN_LINK}

Click "Sign Out" Link
    click link    ${TOPNAV_SIGOUT_LINK}



