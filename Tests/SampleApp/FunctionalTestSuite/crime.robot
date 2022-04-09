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
    Input text  name:password  12345
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[3]/td[2]/button
    sleep  2s

View Crimes test case
    [Documentation]  View crimes
    [Tags]  staff
    click element  xpath:/html/body/nav[1]/div/div/ul/li/a
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    input text  name:date  10/05/2001
    sleep  1s
    click element  xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[1]/a
    sleep  2s
    click element  xpath:/html/body/nav[3]/div/div/ul/li/a
    sleep  2s


New user registration test case
    [Documentation]  New User
    [Tags]  staff

    click element  xpath:/html/body/nav/div/div/ul/li[2]/a
    sleep  2s
    Input text  name:mname  Shriya
    Input text  name:address  Aurangabad
    Input text  name:emailid  shriya.tarun@gmail.com
    Input text  name:phone  7020104968
    Input text  name:mpassword  1234
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  4s

Report crime test case
    [Documentation]  Report crime
    [Tags]  staff
    click element  xpath:/html/body/nav[1]/div/div/ul/li/a
    sleep  3s
    Input text  name:name  Shriya
    Input text  name:date  10/05/2001
    Input text  name:description  The report contains statistical information on cognizable crimes as reported in police stations during the reference year. Information on police
    Input text  name:remarks  The report contains statistical information on cognizable crimes as reported in police stations during the reference year. Information on police
    sleep  2s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[5]/td[2]/button
    sleep  4s

Edit profile test case
    [Documentation]  Edit profile
    [Tags]  staff
    click element  xpath:/html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    Input text  name:phone  9130807935
    Input text  name:mname  Tarun
    Input text  name:address  Aurangabad
    Input text  name:emailid  shriya.tarun1234@gmail.com
    Input text  name:mpassword  1234
    sleep  3s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[4]/a
    sleep  2s

Admin Login test case
    [Documentation]  login page
    [Tags]  staff

    Input text  name:emailid  sania.shinde18@vit.edu
    Input text  name:mpassword  1234
    sleep  2s
    click button  xpath:/html/body/form/div/div/div/table/tbody/tr[3]/td[2]/button
    sleep  2s

Report crime test case
    [Documentation]  Report crime
    [Tags]  staff
    click element  xpath:/html/body/nav[1]/div/div/ul/li/a
    sleep  3s
    Input text  name:name  Shriya
    Input text  name:date  10/05/2001
    Input text  name:description  The report contains statistical information on cognizable crimes as reported in police stations during the reference year. Information on police
    Input text  name:remarks  The report contains statistical information on cognizable crimes as reported in police stations during the reference year. Information on police
    sleep  2s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[5]/td[2]/button
    sleep  4s

Edit profile test case
    [Documentation]  Edit profile
    [Tags]  staff
    click element  xpath:/html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    Input text  name:phone  9130807935
    Input text  name:mname  Tarun
    Input text  name:address  Aurangabad
    Input text  name:emailid  shriya.tarun1234@gmail.com
    Input text  name:mpassword  1234
    sleep  3s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li[4]/a
    sleep  2s

Guest user test case
    [Documentation]  Guest user
    [Tags]  staff
    click element  xpath:/html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    Input text  name:date  20/04/2022
    Input text  name:description  The report contains statistical information on cognizable crimes as reported in police station
    Input text  name:remarks  The report contains statistical information on cognizable crimes as reported in police station
    sleep  3s
    click button  xpath:/html/body/div/div/div/form/table/tbody/tr[5]/td[2]/button
    sleep  2s
    click element  xpath:/html/body/nav/div/div/ul/li/a
    sleep  2s


*** Keywords ***