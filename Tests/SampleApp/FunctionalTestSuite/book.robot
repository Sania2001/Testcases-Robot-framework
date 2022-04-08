*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}  http://127.0.0.1:5000/
${user_parameter}  admin
${pass_parameter}  9875

*** Test Cases ***

Admin Login test case
    [Documentation]  login page
    [Tags]  staff
    Open Browser  ${url}  chrome
    click element  xpath:/html/body/nav/div/div/ul/li[1]/a

    Input text  name:username  admin
    Input text  name:password  9875
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[3]/td[2]/button
    sleep  2s
    click element  xpath:/html/body/nav[1]/div/div/ul/li/a
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[1]/a
    sleep  1s

Add Books test case
    [Documentation]  add
    [Tags]  staff

    click element  xpath:/html/body/nav[2]/div/div/ul/li/a
    sleep  1s
    Input text  name:name  abc
    Input text  name:author  abc
    Input text  name:category  drama
    Input text  name:price  500
    Input text  name:publisher  abc
    Input text  name:username  abc
    Input text  name:password  abc
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[1]/a
    sleep  2s



Search test case
    [Documentation]  search
    [Tags]  staff
    click element  xpath:/html/body/nav[3]/div/div/ul/li/a
    Input text  name:name  abc
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li/a
    sleep  2s


Edit test case
    [Documentation]  Edit
    [Tags]  staff
    click element  xpath:/html/body/nav[4]/div/div/ul/li/a
    Input text  name:name  abc
    Input text  name:author  abc
    Input text  name:category  drama
    Input text  name:price  500
    Input text  name:publisher  abc
    Input text  name:username  abc
    Input text  name:password  abc
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[8]/td/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[1]/a
    sleep  2s


Delete test case
    [Documentation]  Delete
    [Tags]  staff
    click element  xpath:/html/body/nav[5]/div/div/ul/li/a
    sleep  2s
    Input text  name:name  abc
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[1]/a
    sleep  2s
    click element  xpath:/html/body/nav[7]/div/div/ul/li/a
    sleep  2s

New user login test case
    [Documentation]  New user login
    [Tags]  staff
    click element  xpath:/html/body/nav/div/div/ul/li[2]/a
    sleep  2s
    Input text  name:mname  abc
    Input text  name:address  abc
    Input text  name:emailid  drama
    Input text  name:phone  500
    Input text  name:mpassword  abc
    sleep  2s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  2s
    click element  xpath:/html/body/nav[1]/div/div/ul/li/a
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li/a
    sleep  2s

Search test case
    [Documentation]  search
    [Tags]  staff
    click element  xpath:/html/body/nav[2]/div/div/ul/li/a
    sleep  2s
    Input text  name:name  a
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[7]/a
    sleep  2s

User login test case
    [Documentation]  User login
    [Tags]  staff
    Input text  name:mname  abc
    Input text  name:mpassword  abc
    sleep  2s
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[3]/td[2]/button
    sleep  2s
    click element  xpath:/html/body/nav[1]/div/div/ul/li/a
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li/a
    sleep  2s

Search test case
    [Documentation]  search
    [Tags]  staff
    click element  xpath:/html/body/nav[2]/div/div/ul/li/a
    sleep  2s
    Input text  name:name  a
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[7]/a
    sleep  2s


*** Keywords ***