*** Settings ***
Documentation       A resource file with reusable keywords and variables.
...
...                 The system specific keywords created here form our own
...                 domain specific language. They utilize keywords provided
...                 by the imported Selenium2Library.
Library             Process
Library             String
Library             OperatingSystem
Library             Selenium2Library            60  80
Library             DebugLibrary
Library 	          Collections
Library             DateTime
Variables           Petclinic.py

*** Variables ***

${BROWSER}          firefox
${URL}              http://petclinic
${WAIT_VISIBLE}     20

*** Keywords ***
#####################################################
#-------------Common Functions---------------------
#####################################################
Click With Wait
    [Arguments]     ${Locator}
    Sleep           5
    #Wait Until Element is Visible      ${Locator}       ${WAIT_VISIBLE}
    #Wait Until Element Is Enabled      ${Locator}       ${WAIT_VISIBLE}
    Click Element                      ${Locator}

    #####################################################
#-------------Translator Functions---------------------
#####################################################

Open to Petclinic Homepage

    [Documentation]                 Navigates to home page and logs in if prompted for
    Open Browser                    ${URL}     ${BROWSER}
    Maximize Browser Window

HomePage

    wait until element is visible       &{Petclinic.HomePage}[Home]       ${WAIT_VISIBLE}
    sleep  3
    wait until element is visible       &{Petclinic.HomePage}[Welcome]
    wait until element is visible       &{Petclinic.HomePage}[Spring]     ${WAIT_VISIBLE}
    wait until element is visible       &{Petclinic.HomePage}[FullPage]

FindOwners
    wait until element is visible       &{Petclinic.FindOwners}[FindOwnersLink]
    sleep  3
    click element                       &{Petclinic.FindOwners}[FindOwnersLink]
    wait until element is visible       &{Petclinic.FindOwners}[Find Owners]
    sleep  3
    wait until element is visible       &{Petclinic.FindOwners}[Last name]

AddingOwner
    #click element                       &{Petclinic.FindOwners}[FindOwnersLink]
    wait until element is visible       &{Petclinic.AddingOwner}[AddOwner]
    sleep  3
    click element                       &{Petclinic.AddingOwner}[AddOwner]
    wait until element is visible       &{Petclinic.AddingOwner}[New Owner]
    wait until element is visible       &{Petclinic.AddingOwner}[FirstName]
    sleep  3
    wait until element is visible       &{Petclinic.AddingOwner}[FirstNameText]
    Input Text                          &{Petclinic.AddingOwner}[FirstNameText]         ${FIRSTNAME}
    sleep  3
    wait until element is visible       &{Petclinic.AddingOwner}[Last Name]
    wait until element is visible       &{Petclinic.AddingOwner}[LastNameText]
    sleep  3
    Input Text                          &{Petclinic.AddingOwner}[LastNameText]          ${LASTNAME}
    sleep  3
    wait until element is visible       &{Petclinic.AddingOwner}[Address]
    wait until element is visible       &{Petclinic.AddingOwner}[AddressText]
    Input Text                          &{Petclinic.AddingOwner}[AddressText]           ${ADDRESS}
    sleep  3
    wait until element is visible       &{Petclinic.AddingOwner}[City]
    wait until element is visible       &{Petclinic.AddingOwner}[CityText]
    Input Text                          &{Petclinic.AddingOwner}[CityText]              ${CITY}
    wait until element is visible       &{Petclinic.AddingOwner}[Telephone]
    wait until element is visible       &{Petclinic.AddingOwner}[TelephoneNumber]
    Input Text                          &{Petclinic.AddingOwner}[TelephoneNumber]       ${TELEPHONE}
    wait until element is visible       &{Petclinic.AddingOwner}[Add Owner]
    click element                       &{Petclinic.AddingOwner}[Add Owner]

AddingNewPet
    wait until element is visible       &{Petclinic.AddingNewPet}[Add New Pet]
    click element                       &{Petclinic.AddingNewPet}[Add New Pet]
    wait until element is visible       &{Petclinic.AddingNewPet}[New Pet Display]
    wait until element is visible       &{Petclinic.AddingNewPet}[Owner]
    wait until element is visible       &{Petclinic.AddingNewPet}[Name]
    sleep  3
    Input Text                          &{Petclinic.AddingNewPet}[PetName]               Snoopy
    wait until element is visible       &{Petclinic.AddingNewPet}[Birth date]
    Input Text                          &{Petclinic.AddingNewPet}[BirthDate]             2018-07-30
    sleep  3
    click element                       &{Petclinic.AddingNewPet}[Type]
    click element                       &{Petclinic.AddingNewPet}[Add pet]

FindOwnerByGivingInput
    click element                       &{Petclinic.FindOwners}[FindOwnersLink]
    wait until element is visible       &{Petclinic.FindOwners}[Input]
    sleep  2
    Input Text                          &{Petclinic.FindOwners}[Input]         CLINIC
    sleep  2
    click element                       &{Petclinic.FindOwners}[FindOwnerButton]
    sleep  2

FailedAddingOwner
    click element                       &{Petclinic.FindOwners}[FindOwnersLink]
    sleep  2
    click element                        &{Petclinic.AddingOwner}[AddOwner]
    Input Text                          &{Petclinic.AddingOwner}[LastNameText]          ${LASTNAME}
    Input Text                          &{Petclinic.AddingOwner}[AddressText]           ${ADDRESS}
    Input Text                          &{Petclinic.AddingOwner}[CityText]              ${CITY}
    Input Text                          &{Petclinic.AddingOwner}[TelephoneNumber]       ${TELEPHONE}
    sleep  2
    click element                        &{Petclinic.AddingOwner}[Add Owner]
    sleep  2
    wait until element is visible       &{Petclinic.AddOwner}[FirstName]

FailedAddingPet
    click element                       &{Petclinic.FindOwners}[FindOwnersLink]
    sleep  2
    click element                        &{Petclinic.AddingOwner}[AddOwner]
    Input Text                          &{Petclinic.AddingOwner}[FirstNameText]         ${FIRSTNAME}
    Input Text                          &{Petclinic.AddingOwner}[LastNameText]          ${LASTNAME}
    Input Text                          &{Petclinic.AddingOwner}[AddressText]           ${ADDRESS}
    Input Text                          &{Petclinic.AddingOwner}[CityText]              ${CITY}
    Input Text                          &{Petclinic.AddingOwner}[TelephoneNumber]       ${TELEPHONE}
    sleep  2
    click element                        &{Petclinic.AddingOwner}[Add Owner]
    click element                       &{Petclinic.AddingNewPet}[Add New Pet]
    Input Text                          &{Petclinic.AddingNewPet}[BirthDate]             2018-07-30
    click element                       &{Petclinic.AddingNewPet}[Type]
    click element                       &{Petclinic.AddingNewPet}[Add pet]
    sleep  2
    wait until element is visible       &{Petclinic.AddingPet}[PetName]

FailedFindOwnerByGivingInput
    click element                       &{Petclinic.FindOwners}[FindOwnersLink]
    Input Text                          &{Petclinic.FindOwners}[Input]         JeffBlack
    click element                       &{Petclinic.FindOwners}[FindOwnerButton]
    sleep  2
    wait until element is visible       &{Petclinic.FailedInput}[LastName]


Validate Results
    [Arguments]     ${ADDRESS}     ${CITY}      ${TELEPHONE}
    @{webElements}=  Get WebElements     &{Petclinic.ValidateName}[Results]
    :FOR            ${element}          ${ADDRESS}      ${CITYName}       ${TELEPHONENo.}      IN ZIP      ${webElements}      ${ADDRESS}     ${CITY}      ${TELEPHONE}
    \               ${child}        Call Method         ${element}          find_element_by_xpath       /html/body/div/div/table[1]/tbody/tr[2]/td
    \               ${actualAddress}  Call Method         ${child}            get_attribute               innerHTML
    \               Should Be Equal As Strings          ${actualAddress}            ${ADDRESS}
    \               ${child}        Call Method         ${element}          find_element_by_xpath       /html/body/div/div/table[1]/tbody/tr[3]/td
    \               ${actualCity}  Call Method         ${child}            get_attribute               innerHTML
    \               Should Contain                      ${actualCity}            ${CITYName}
    \               ${child}        Call Method         ${element}          find_element_by_xpath       /html/body/div/div/table[1]/tbody/tr[4]/td
    \               ${actualTelephone}   Call Method         ${child}            get_attribute               innerHTML
    \               Should Be Equal As Strings          ${actualTelephone}            ${TELEPHONENo.}


Close
    Close Browser
