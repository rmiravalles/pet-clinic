class PetObjects(object):


    ProjectName = 'Petclinic Test Automation'
    filename = 'notes'
    Release_Name = 'Petclinic'

    HomePage = {
        "Home": "xpath=//*[@id='main-navbar']/ul/li[1]/a",
        "Welcome": "xpath=/html/body/div/div/div[1]/div/img",
        "Spring": "xpath=/html/body/div/div/div[2]/div/div/img",
        "FullPage": "xpath=/html/body/div/div/div[1]/div"
    }
    FindOwners = {
        "FindOwnersLink": "xpath=//*[@id='main-navbar']/ul/li[3]/a",
        "Find Owners": "xpath=/html/body/div/div/h2",
        "Last name": "xpath=//*[contains(text(),'Last name')] | //*[contains(text(),'Last/First name')]",
        "Input": "xpath=//input[@id='lastName']",
        "FindOwnerButton": "xpath=//*[@id='search-owner-form']/div[2]/div/button"
    }
    AddingOwner = {
        "AddOwner": "xpath=/html/body/div/div/a",
        "New Owner": "xpath=/html/body/div/div/h2",
        "FirstName": "xpath=//*[@id='add-owner-form']/div[1]/div[1]/label",
        "FirstNameText": "xpath=//input[@id='firstName']",
        "Last Name": "xpath=//*[@id='add-owner-form']/div[1]/div[2]/label",
        "LastNameText": "xpath=//input[@id='lastName']",
        "Address": "xpath=//*[@id='add-owner-form']/div[1]/div[3]/label",
        "AddressText": "xpath=//input[@id='address']",
        "City": "xpath=//*[@id='add-owner-form']/div[1]/div[4]/label",
        "CityText": "xpath=//input[@id='city']",
        "Telephone": "xpath=//*[@id='add-owner-form']/div[1]/div[5]/label",
        "TelephoneNumber": "xpath=//input[@id='telephone']",
        "Add Owner": "xpath=//*[@id='add-owner-form']/div[2]/div/button",
        "Owner Information": "xpath=/html/body/div/div",
        "Pet and visits": "xpath=/html/body/div/div/h2[2]",
        "spring": "xpath=/html/body/div/div/div/div/div/img"
    }
    CheckingInformation = {
        "OwnerInformation": "xpath=/html/body/div/div",
        "Name": "xpath=/html/body/div/div/h2[1]",
        "Address": "xpath=/html/body/div/div/table[1]/tbody/tr[2]/th",
        "City": "xpath=/html/body/div/div/table[1]/tbody/tr[3]/th",
        "Telephone": "xpath=/html/body/div/div/table[1]/tbody/tr[4]/th"
    }
    AddingNewPet = {
        "Add New Pet": "xpath=/html/body/div/div/a[2]",
        "New Pet Display": "xpath=/html/body/div/div/h2",
        "Owner": "xpath=/html/body/div/div/form/div[1]/div[1]/label",
        "Name": "xpath=/html/body/div/div/form/div[1]/div[1]/div/span",
        "PetName": "xpath=//input[@id='name']",
        "Birth date": "xpath=/html/body/div/div/form/div[1]/div[3]/label",
        "BirthDate": "xpath=//input[@id='birthDate']",
        "Add pet": "xpath=/html/body/div/div/form/div[2]/div/button",
        "Type": "xpath=//*[@id='type']/option[3]",
        "Pet and Visits": "xpath=/html/body/div/div/h2[2]",
        "Valign": "xpath=/html/body/div/div/table[2]/tbody/tr/td[1]",
        "VisitDate": "xpath=/html/body/div/div/table[2]/tbody/tr/td[2]/table/thead/tr/th[1]",
        "Description": "xpath=/html/body/div/div/table[2]/tbody/tr/td[2]/table/thead/tr/th[2]",
        "EditPet": "xpath=/html/body/div/div/table[2]/tbody/tr/td[2]/table/tbody/tr/td[1]",
        "AddVisit": "xpath=/html/body/div/div/table[2]/tbody/tr/td[2]/table/tbody/tr/td[2]/a",
        "UpdatePet": "xpath=//*[@id='pet']/div[2]/div/button",
        "display": "xpath=/html/body/div[1]/div",
        "Description1": "xpath=//*[@id=description']",
        "Add Visit": "xpath=//*[@id='visit']/div[2]/div/button"
    }

    AddOwner = {
        "FirstName": "xpath=//*[@id='add-owner-form']/div[1]/div[1]/div/span[2]"
    }

    AddingPet = {
        "PetName": "xpath=/html/body/div/div/form/div[1]/div[2]/div/span[2]"
    }

    FailedInput = {
        "LastName": "xpath=//*[@id='lastNameGroup']/div/span/div/p"
    }

    EditingOwner = {
      "Edit Owner": "xpath=/html/body/div/div/a[1]",
      "Update Owner": "xpath=//*[@id='add-owner-form']/div[2]/div/button"
    }

    ValidateName = {
      "NameValidate": "xpath=//*[@id='ownersTable']/tbody/tr[38]/td[1]/a",
      "AddressValidate":  "xpath=//*[@id='ownersTable']/tbody/tr[38]/td[2]",
      "Results": "xpath=/html/body/div/div"
    }


Petclinic = PetObjects()
