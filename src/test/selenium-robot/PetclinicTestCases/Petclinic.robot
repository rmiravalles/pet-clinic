*** Settings ***
Resource            ../resources/resource.robot


*** Variables ***
@{FIRSTNAME}        PET
@{LASTNAME}         CLINIC
@{ADDRESS}          NEWYORK
@{CITY}             USA
@{TELEPHONE}        8723762309



*** Test Cases ***

CheckDashboardPETClinic
  [Tags]      CheckDashboardPETClinic
	Open to Petclinic Homepage

CheckHomePage
  [Tags]       CheckHomePageLink
  HomePage

CheckFindOwners
  [Tags]       FindOwners
  FindOwners

CheckAddingOwner
  [Tags]       AddingOwner
  AddingOwner
  Validate Results               ${ADDRESS}       ${CITY}           ${TELEPHONE}

CheckAddingNewPet
  [Tags]        CheckAddingNewPet
  AddingNewPet

CheckFindOwnerByGivingInput
  [Tags]        CheckFindOwnerByGivingInput
  FindOwnerByGivingInput

CheckFailedAddingOwner
  [Tags]        CheckFailedAddingOwner
  FailedAddingOwner

checkFailedAddingPet
  [Tags]        checkFailedAddingPet
  FailedAddingPet

checkFailedFindOwnerByGivingInput
  [Tags]        checkFailedFindOwnerByGivingInput
  FailedFindOwnerByGivingInput

CheckClose
  [Tags]        Close
  Close
