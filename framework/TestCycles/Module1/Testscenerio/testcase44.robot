*** Settings ***
Library    SeleniumLibrary

Resource    ../../../Resources/Variables/Hr_login_variables.robot
Resource    ../../../Resources/Keywords/Hr_login_keywords.robot
Resource    ../../../Resources/PageObjects/Hr_login_po.robot
Resource    ../../../Resources/Keywords/Hr_delete_time_sheet_keywords.robot
*** Test Cases ***
Delete Time Sheet On Daily
     Open Terralogic Website    # Open the Terralogic website
     Click on terralogic_login    # Click on the login button
     Switch to window    # Switch to a new window for login
     Login to Gmail    ${Username}    ${Password}    ${Hros_user_xpath}     ${Hros_pass_xpath}    # Login to Gmail using provided credentials
     Sleep    5s    # Wait for 5 seconds
     Switch Back To Main Window    # Switch back to the main window
     Click On TimeSheet Menu
     Mouse Over TO Task Header
     Click Element if Visible
     Close All Browsers