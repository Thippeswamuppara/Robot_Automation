*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://terralogic.paxanimi.ai/login
${username}     uppara.thippeswamy@terralogic.com
${password}     Thippeswamy@0224

*** Keywords ***
#Login page Keyword
Click on Terralogic button from Login Page
    Click Button    xpath://span[text()='Terralogic Login']//parent::button
Enter username and password in their respective fields
    Input Text    xpath://input[@id='identifierId']     ${username}
    Click Button    xpath://span[text()='N?>e``xt']//ancestor::button
    Wait Until Element Is Visible       //input[@name='Passwd']
    Input Text    xpath://input[@name='Passwd']     ${password}
Click Next Button to login into Hros Home Page
    Click Button    xpath://span[text()='Next']//parent::button
    Sleep     30s
    switch Window   Home - HR-OS
    Element Should Be Visible    xpath://div[@class='ant-layout-sider-children']/div[1]/ul/li[1]//a
