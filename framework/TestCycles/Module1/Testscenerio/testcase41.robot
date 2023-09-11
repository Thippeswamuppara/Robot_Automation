*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Resources/Keywords/Hr_daily_base_sheet_keywords.robot
Resource    ../../../Resources/Variables/Hr_login_variables.robot
Resource    ../../../Resources/Keywords/Hr_login_keywords.robot
Resource    ../../../Resources/PageObjects/Hr_login_po.robot
*** Test Cases ***
Time Sheet Fill On Daily Basis
     Open Terralogic Website    # Open the Terralogic website
     Click on terralogic_login    # Click on the login button
     Switch to window    # Switch to a new window for login
     Login to Gmail    ${Username}    ${Password}    ${Hros_user_xpath}     ${Hros_pass_xpath}    # Login to Gmail using provided credentials
     Sleep    5s    # Wait for 5 seconds
     Switch Back To Main Window    # Switch back to the main window
     Sleep    4s    # Wait for 10
     Time Sheet for a week on Daily basis
     Close The Browser