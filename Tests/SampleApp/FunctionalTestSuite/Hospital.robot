*** Settings ***
Library  SeleniumLibrary

*** Variables ***


${url}  http://127.0.0.1:5000/
${user_parameter}  admin
${pass_parameter}  12345
${name_parameter}  sania
${phone_parameter}  8669119830
${age_parameter}  20
${address_parameter}  Satara
${dob_parameter}  10-05-2001
${place_parameter}  satara
${pin_parameter}  415001

*** Test Cases ***


Login Page test case
    [Documentation]  login page
    [Tags]  staff
    Open Browser  ${url}  chrome
    Input text  name:username  ${user_parameter}
    Input text  name:password  ${pass_parameter}
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[3]/td[2]/button
    sleep  2s


Add Patient test case
    [Documentation]   add patients
    [Tags]  staff

    Input text  xpath:/html/body/div/div/div/form/table/tbody/tr[1]/td[2]/input  sania
    Input text  xpath:/html/body/div/div/div/form/table/tbody/tr[2]/td[2]/input  11224435
    Input text  name:age  20
    Input text  name:address  aaa
    Input text  name:dob  10/05/2001
    Input text  name:place  satara
    Input text  name:pincode  415001
    sleep  2s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li/a
    sleep  2s

Search test case
    [Documentation]   Search
    [Tags]  staff
    click element  xpath:/html/body/nav/div/div/ul/li[2]/a
    Input text  name:name  sania
    sleep  1s
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li/a
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[5]/a
    sleep  3s
    click element  xpath:/html/body/nav/div/div/ul/li/a
    sleep  2s

Update test case
    [Documentation]   update
    [Tags]  staff
    click element  xpath:/html/body/nav/div/div/ul/li[3]/a

    Input text  xpath:/html/body/div/div/div/form/table/tbody/tr[1]/td[2]/input  sania
    Input text  xpath:/html/body/div/div/div/form/table/tbody/tr[2]/td[2]/input  11224435
    Input text  name:age  20
    Input text  name:address  aaa
    Input text  name:dob  10/05/2001
    Input text  name:place  satara
    Input text  name:pincode  415001
    sleep  2s
    click element  xpath:/html/body/div/div/div/form/table/tbody/tr[8]/td/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li/a
    sleep  2s

Delete test case
    [Documentation]   Delete
    [Tags]  staff
    click element  xpath:/html/body/nav/div/div/ul/li[4]/a
    Input text  name:name  sania
    sleep  1s
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li/a
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[6]/a
    sleep  2s





*** Keywords ***