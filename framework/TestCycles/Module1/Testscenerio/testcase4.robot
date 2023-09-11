*** Settings ***
Library    SeleniumLibrary
Resource    ../../../Resources/Variables/Hr_login_variables.robot

Resource    ../../../Resources/Keywords/Hr_login_keywords.robot
Resource    ../../../Resources/PageObjects/Hr_login_po.robot
Resource    ../../../Resources/Keywords/Hr_top_menu_keywords.robot



*** Test Cases ***
Login Into Hros And Check The Top Menu Functionalities
    Open Terralogic Website    # Open the Terralogic website
    Click on terralogic_login    # Click on the login button
    Switch to window    # Switch to a new window for login
    Login to Gmail    ${Username}    ${Password}    ${Hros_user_xpath}     ${Hros_pass_xpath}    # Login to Gmail using provided credentials
    Sleep    5s    # Wait for 5 seconds
    Switch Back To Main Window    # Switch back to the main window
    Sleep    4s    # Wait for 10 seconds
    Search Image on The Top Menu    # Perform a search in the top menu
    Mouse Hover Functionality    # Perform mouse hover functionality
    Bell Image Functionality    # Perform functionality related to the bell image
    Brush Image Functionality    # Perform functionality related to the brush image
    Drop Down Functionality    # Perform dropdown functionality
    Profile Functionality    # Perform profile functionality
    Left Side Menu    # Click on elements in the left side menu
    Close All Browsers
