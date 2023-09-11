*** Settings ***
Library   SeleniumLibrary
Resource   ../Variables/Hr_daily_base_sheet_variables.robot
Resource   ../Variables/Hr_weekly_basis_variables.robot
Resource   ../Variables/Hr_update_time_sheet_variables.robot
Resource   ../Variables/Hr_delete_time_sheet_variables.robot
Library    DateTime
Library    String
Library    Collections

*** Keywords ***
Mouse Over TO Task Header
	Mouse Over      ${Task_Header_xpath}
    sleep   10s
#Click On Weekly Basis Button
#	Click ELement    ${Weekily_lable_xpath}
Click On TimeSheet Menu
	Wait Until Element Is Visible    ${timesheet}
    Click Element    ${timesheet}
    Sleep   5s
Delete Daily Time Sheet
############################################################
#	sleep  5s
#    #Click Element If Present1  ${edit_sheet_xpath}
#    ${count} =	Get Element Count	${edit_sheet_xpath}
#
#	${edit_elemets}=   Get WebELements   ${edit_sheet_xpath}
#	Log To Console    	webelements ${edit_elemets}
#	FOR    ${index}    ${element}    IN ENUMERATE    @{edit_elemets}
#		${is_clickable} =    Run Keyword And Return Status    Element Should Be Clickable    ${element}
#		Log To Console   is cliable ${is_clickable}
#		Run Keyword If  '${is_clickable}'=='True'    Log To COnsole ${index} ${element}
#   END

########################################################################
    ${edit_elemets}=   Get WebELements   ${delete_sheet_xpath}
    ${num_elements} =  Get Length    ${edit_elemets}
    Log to console       thipe ${num_elements}
    IF    '${num_elements}' == '1'

    	Click Image  ${delete_sheet_xpath}
    	${Delete_button}=  Run Keyword And Ignore Error    Click Button   xpath://div[@class='ant-modal ActionModal']//descendant::button[3]
    	sleep  5s
#    	Clear Element Text     xpath://textarea[@id='basic_notes']
#
#        Input Text      xpath://textarea[@id='basic_notes']      This is enew file edit thing
#        Click Element      ${Update_button_xpath}
#        sleep  5s
#        #Click Element if Present    ${Overlap_Notification_Error_Msg}   ${Cancel_button_xpath}
#        ${count} =    Set Variable    0
#        FOR    ${i}    IN RANGE    1    6
#    	    ${element}=  Run keyword and Return Status  Wait until element is visible     xpath://div[text()='Cancel']
#            IF    '${element}' == 'True'
#                ${count} =    Evaluate    ${count} + 1
#            END
#        END
#
#        IF  '${count}'>='4'
#            Log To Console    count ${count}
#
#        	Click Element   xpath://div[text()='Cancel']
#        END
        Click Element     ${forward_button_xpath}
    END

    	sleep  5s
#    	Click Element     ${Cancel_button_xpath}
#    	sleep   5s
#    	Click Element     ${forward_button_xpath}
#    	sleep  10s


    # Perform your second action here
    #Log To Console    	webelements ${edit_elemets}
    IF    '${num_elements}' != '1'
        FOR    ${index}    ${element}    IN ENUMERATE    @{edit_elemets}
            ${is_clickable} =    Run Keyword And Ignore Error   Click Element    ${element}
            sleep  2s
            ${Delete_button}=  Run Keyword And Ignore Error    Click Button   xpath://div[@class='ant-modal ActionModal']//descendant::button[3]
            sleep  5s
            #Log To Console   is clickable ${is_clickable}
            #Run Keyword If    '${is_clickable}' == 'True'

#            ${link_elements} =    Run keyword and Return Status  Element Should Be Visible    xpath://textarea[@id='basic_notes']    timeout=10s
#            Run Keyword If    ${link_elements} =='True'   Exit For Loop  Else  Log TO console hi
#                #Log    Link page is open, execute actions


        END
#        Click Element     ${Cancel_button_xpath}
#    	sleep   5s
#        Clear Element Text     xpath://textarea[@id='basic_notes']
#
#        Input Text      xpath://textarea[@id='basic_notes']      This is new file edit thing
#        Click Element      ${Update_button_xpath}
#        sleep  7s
#        ${count} =    Set Variable    0
#        FOR    ${i}    IN RANGE    1    6
#    	    ${element}=  Run keyword and Return Status  Wait until element is visible     xpath://div[text()='Cancel']
#            IF    '${element}' == 'True'
#                ${count} =    Evaluate    ${count} + 1
#            END
#        END
#
#        IF  '${count}'>='4'
#        	Log To Console   2nd if ${count}
#        	Click Element   xpath://div[text()='Cancel']
#        END
#        #Click Element if Present    ${Overlap_Notification_Error_Msg}    ${Cancel_button_xpath}
#        Wait Until Element is visible    ${forward_button_xpath}

    	Click Element     ${forward_button_xpath}
    	sleep  5s
    END








	#Wait Until Element Is Visible    ${addtask}
    #Click Element    ${addtask}


    #Click Element    ${calendar}
    #Sleep    7s

#    Click Element   ${start_date}
#    Sleep    5s
#
#    Click Element    ${end_date}


#    Press Keys    ${select_start_time}    9:00 am
#    Sleep    6s
#
#    Click Element    ${select_start_time1}
#    Sleep    6s
#
#    Press Keys    ${select_end_time}    6:00 pm
#    Sleep    5s
#
#    Click Element    ${select_end_time1}
#    Sleep    5s
#
#    Press Keys    ${select_project}    Rampup_Software Services
#    Sleep    5s
#
#    Click Element    ${select_project_name}
#    Sleep    2s
#
     #Input Text    ${task_name}    ${task_name_value} hello
#    Sleep    2s
#
#    Input Text    ${description}    ${description_value}
#    Sleep    2s
#
#
#
#     Clear Element Text     xpath://textarea[@id='basic_notes']
#     sleep  2s
#     Input Text      xpath://textarea[@id='basic_notes']      hello
#     Click Element      ${Update_button_xpath}
#     sleep   10s
     #wait until element is visible    ${Cancel_button_xpath}
     #click element   ${Cancel_button_xpath}
     #sleep   5s
#     Click Element        ${forward_button_xpath}
#
#     sleep  15s

Click Element if Visible
    FOR    ${i}   IN   RANGE    1   To   10
        ${element1}=    Run Keyword And Return Status    Element Should Be Visible     ${edit_sheet_xpath}
        Log To Console    ${element1}
        ${element2}=    Run Keyword And Return Status    Element Should Be Visible     ${forward_button_xpath}
        sleep  2s
        Log To Console    ${element2}

        Run Keyword If	'${element1}'=='True'	  Delete Daily Time Sheet	 ELSE	Click Button      ${forward_button_xpath}
        sleep   3s
    END

Click Element if Present
    [Arguments]    ${notification_locator}   ${click_element_locator}
    ${element_visible} =    Run Keyword and Return Status    Element Should Be Visible    ${notification_locator}
    Log To Console    is notification ${element_visible}
    Run Keyword If    '${element_visible}'=='True'    Click Element   ${click_element_locator}  ELSE  Log    No Element




