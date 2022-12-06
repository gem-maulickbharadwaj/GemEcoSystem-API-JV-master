Feature: GemEcoSystem-APIs-JV
#
  Scenario Outline: Sample-Test
    Given Set endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | Gettt    | get    | 200             |

  Scenario Outline: Get Company
    Given Set endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | Getc     | get    | 200             |

  Scenario Outline: Validate UserName
    Given Set endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | Gett     | get    | 200             |

  Scenario Outline: Validate Username when username does not exists
    Given Set endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | Gett2    | get    | 200             |

  Scenario Outline: Get data of suite s-run id not present
    Given Authenticate endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | Gettte   | get    | 400             |

  Scenario Outline: Get Token
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | Gettoken | get    | 200             |

  Scenario Outline: Get Token With Wrong Authentication
    Given Set Wrong token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | Gettoken | get    | 403             |

  Scenario Outline: Get Token With Empty Authentication
    Given Set Empty token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | Gettoken | get    | 403             |

  Scenario Outline: Login User
    Given Set endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName       |
      | Login    | Post   | 200             | Login_sampleJson |

#  Scenario Outline: Login User with wrong credentials
#    Given Set credentials endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
#    Then Verify Status code <Expected_status>
#    Examples:
#      | endpoint | Method | Expected_status | SampleName   |
#      | Login    | Post   | 400             | loginInvalid |

  Scenario Outline: Login User with Empty Fields
    Given Set credentials endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | Login    | Post   | 400             | Login3_sampleJson |

  Scenario Outline: Login User with Empty Body
    Given Set credentials endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | Login    | Post   | 400             | Login4_sampleJson |

  Scenario Outline: Change Token
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status |
      | posttoken | Post   | 200             |

  Scenario Outline: Change Token When Header is not Given
    Given Set Empty token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status |
      | posttoken | Post   | 403             |

  Scenario Outline: Change Token wih wrong Authentication
    Given Set Wrong token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status |
      | posttoken | Post   | 403             |

  Scenario Outline: Insert Test-Suite Using Post APIs
    Given Set Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | pospo    | Post   | 201             | psuite_sampleJson |

  Scenario Outline: Insert the suite using Post API when S-run-id is already present
    Given Set Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName         |
      | pospo    | Post   | 400             | psuite1_sampleJson |

  Scenario Outline: Insert the Suite using post API when S-run-id not present in the payload
    Given Set Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName         |
      | pospo    | Post   | 201             | psuite2_sampleJson |

  Scenario Outline: Insert the Suite using Wrong Authentication
    Given Set Suite-API using Wrong Authentication endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName         |
      | pospo    | Post   | 403             | psuite2_sampleJson |

  Scenario Outline: Insert the Suite when Headers not given
    Given Set Suite-API when headers not given endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName         |
      | pospo    | Post   | 400             | psuite2_sampleJson |


  Scenario Outline: Update the suite using Put API
    Given Update Suite using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName       |
      | putu     | put    | 200             | put_1_sampleJson |

  Scenario Outline: Update the suite When S-run-id is not present in Database
    Given Update Suite when S-run-id not present using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName       |
      | putu     | put    | 400             | put_2_sampleJson |

  Scenario Outline: Update the suite Using Wrong Authentication
    Given Update Suite using wrong Authentication using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName       |
      | putu     | put    | 403             | put_2_sampleJson |

  Scenario Outline: Update the suite without Authentication
    Given Update Suite without Authentication using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName       |
      | putu     | put    | 400             | put_2_sampleJson |

  Scenario Outline:Create new record for Testcases
    Given Create record using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName       |
      | pospos   | post   | 201             | ptest_sampleJson |

  Scenario Outline:Create new record for Testcases when S-run-id not exists in database
    Given Create record when s-id not exists using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | pospos   | post   | 400             | ptest1_sampleJson |

  Scenario Outline:Create new record for Testcases when S-run-id not given
    Given Create record when s-id not given using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | pospos   | post   | 400             | ptest2_sampleJson |

  Scenario Outline:Create new record for Testcases when TC-run-id not given
    Given Create record when TC-id not given using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | pospos   | post   | 201             | ptest3_sampleJson |

  Scenario Outline:Create new record for Testcases with wrong Authentication
    Given Create record with wrong Authentication using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | pospos   | post   | 400             | ptest3_sampleJson |

  Scenario Outline:Create new record for Testcases when authentication not given
    Given Create record when authentication not given using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | pospos   | post   | 400             | ptest3_sampleJson |

  Scenario Outline: Update the suite using Put API
    Given Update Suite type2 using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | putexe   | put    | 200             | puter1_sampleJson |

  Scenario Outline: Update the Testcase data when S-run-id not given
    Given Update Suite without s-runid using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | putexe   | put    | 400             | puter2_sampleJson |

  Scenario Outline: Update the suite when TC-id not given
    Given Update Suite without tc-id using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | putexe   | put    | 400             | puter3_sampleJson |

  Scenario Outline: Update the testcase data using wrong authentication
    Given Update Suite using wrong Authentication using endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | putexe   | put    | 403             | puter3_sampleJson |

  Scenario Outline: Create New User
    Given  Set Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName            |
      | Post     | Post   | 201             | Postgemini_sampleJson |

  Scenario Outline: Create New User Already Exists
    Given  Set Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName             |
      | Post     | Post   | 409             | Postgemini2_sampleJson |

  Scenario Outline: Create New User When Compulsory field not present
    Given  Set Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName             |
      | Post     | Post   | 500             | Postgemini3_sampleJson |

  Scenario Outline: Create New User When giving empty body
    Given  Set Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName             |
      | Post     | Post   | 500             | Postgemini4_sampleJson |

  Scenario Outline: Create New User When giving wrong E-mail
    Given  Set Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName             |
      | Post     | Post   | 400             | Postgemini5_sampleJson |

  Scenario Outline: Sample-2
    Given Set endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | Gettt    | get    | 200             |

  Scenario Outline: Get data of suite s-run id not present - 2
    Given Authenticate endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | Gettte   | get    | 400             |

  Scenario Outline: Get data of test case
    Given Set endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | Gettest  | get    | 200             |

  Scenario Outline:Get data of Testcase TC-run-id not valid
    Given Authenticate endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | Gettest2 | get    | 400             |
#
######################### Bucket APIs-1 ###################################
#  Scenario Outline:Deleting the Files....
#    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<Method>" and "<SampleName>" and "<stepName>"
#    Then Verify Status code <Expected_status>
#    Examples:
#      | endpoint        | Method | Expected_status | SampleName                 | stepName                               |
#      | permanentDelete | Post   | 200             | permanentDelete_sampleJson | Test to Deleting the Files Permanently |

  Scenario Outline: File upload with Correct BridgeToken
    Given Set endpointt "<endpoint>" and "<endpoint1>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | endpoint1       | Method | SampleName                 | Expected_status |
      | fileUpload1 | permanentDelete | post   | permanentDelete_sampleJson | 200             |
#
  Scenario Outline: File upload with incorrect tag
    Given Set endpointt "<endpoint>" and "<endpoint1>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | endpoint1       | Method | SampleName                 | Expected_status |
      | fileUpload2 | permanentDelete | post   | permanentDelete_sampleJson | 400             |
#
  Scenario Outline: File upload with incorrect BridgeToken
    Given Set endpoint with incorrect bridgetoken "<endpoint>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Expected_status |
      | fileUpload1 | 403             |

#  Scenario Outline:Deleting the File.
#    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<Method>" and "<SampleName>" and "<stepName>"
#    Then Verify Status code <Expected_status>
#    Examples:
#      | endpoint        | Method | Expected_status | SampleName                 | stepName                               |
#      | permanentDelete | Post   | 200             | permanentDelete_sampleJson | Test to Deleting the Files Permanently |

#
  Scenario Outline: File upload with Bearer token
    Given Set endpoint without username "<endpoint>" and "<endpoint1>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | endpoint1       | Method | SampleName                 | Expected_status |
      | fileUpload1 | permanentDelete | post   | permanentDelete_sampleJson | 200             |
##
  Scenario Outline: File upload with Bearer token is not present in username
    Given Set endpoint without username in Bearer Token "<endpoint>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Expected_status |
      | fileUpload1 | 403             |
#
  Scenario Outline: File upload when username is not present in the DataBase
    Given Set endpoint with username not present in db "<endpoint>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Expected_status |
      | fileUpload1 | 403             |
##
########################## Bucket APIs-2 ###################################
##this api is linked with api at line no.423
  Scenario Outline: File upload by text
    Given Set endpoint with text "<endpoint>" and "<endpoint1>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | endpoint1       | Method | SampleName                 | Expected_status |
      | fileUpload3 | permanentDelete | post   | permanentDelete_sampleJson | 200             |
#
  Scenario Outline: File upload by text with incorrect tag
    Given Set endpoint with text wrong tag "<endpoint>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Expected_status |
      | fileUpload4 | 400             |
###
  Scenario Outline: File upload by text with wrong bridge token
    Given Set endpoint with text with wrong BridgeToken "<endpoint>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Expected_status |
      | fileUpload3 | 403             |
###
  Scenario Outline: File upload by text when Bearer token is not present in username
    Given Set endpoint with text when BT is not present "<endpoint>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Expected_status |
      | fileUpload3 | 403             |
###
  Scenario Outline: File upload by text when username is not present in DB
    Given Set endpoint with text without valid username "<endpoint>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Expected_status |
      | fileUpload3 | 403             |
###
  Scenario Outline: File upload by text without permission
    Given Set endpoint with text wrong tag "<endpoint>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Expected_status |
      | fileUpload6 | 401             |
###
  Scenario Outline: File upload by text without write access
    Given Set endpoint with text without write access "<endpoint>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Expected_status |
      | fileUpload6 | 401             |

######################## Bucket APIs-3 ###################################
  ################################have to call this#######################
  Scenario Outline:Get file back from recycle bin
    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<SampleName>" and "<SampleName1>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | endpoint1   | endpoint2       | Method | Expected_status | SampleName           | SampleName1                | stepName                     |
      | changeTag | fileUpload3 | permanentDelete | Post   | 200             | publicTag_sampleJson | permanentDelete_sampleJson | Test to change tag to public |
#  ########################################################################
## jab file ka naam change hota hai to yahape payload me same file ka naam mention krna hai! #
  Scenario Outline:Give WRITE access of the files to the users
    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<SampleName>" and "<SampleName1>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | endpoint1   | endpoint2       | Method | Expected_status | SampleName        | SampleName1                | stepName                     |
      | access   | fileUpload3 | permanentDelete | Post   | 200             | Access_sampleJson | permanentDelete_sampleJson | Test to change tag to public |
##
  Scenario Outline:Give READ access of the files to the users
    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<SampleName>" and "<SampleName1>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | endpoint1   | endpoint2       | Method | Expected_status | SampleName        | SampleName1                | stepName                     |
      | access1  | fileUpload3 | permanentDelete | Post   | 200             | Access_sampleJson | permanentDelete_sampleJson | Test to change tag to public |
##
  Scenario Outline:Remove WRITE access of the files to the users
    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<SampleName>" and "<SampleName1>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | endpoint1   | endpoint2       | Method | Expected_status | SampleName        | SampleName1                | stepName                     |
      | access2  | fileUpload3 | permanentDelete | Post   | 200             | Access_sampleJson | permanentDelete_sampleJson | Test to change tag to public |
#
  Scenario Outline:Remove READ access of the files to the users
    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<SampleName>" and "<SampleName1>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | endpoint1   | endpoint2       | Method | Expected_status | SampleName        | SampleName1                | stepName                     |
      | access3  | fileUpload3 | permanentDelete | Post   | 200             | Access_sampleJson | permanentDelete_sampleJson | Test to change tag to public |
#
  Scenario Outline:Give WRITE access of the files to the users when mode provided is incorrect
    Given Post Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | access4  | Post   | 400             | Access_sampleJson |
##
  Scenario Outline:Remove READ access of the files to the users when the type provided is incorrect
    Given Post Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | access5  | Post   | 400             | Access_sampleJson |
##
  Scenario Outline:Give WRITE access of the files to the users when Bridge Token is not valid
    Given Set Post API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | access   | Post   | 403             | Access_sampleJson |
##
  Scenario Outline:Give WRITE access of the files to the users when username is not found in Bearer token
    Given Set Post API without BT endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName        |
      | access   | Post   | 403             | Access_sampleJson |
###
#    ######################## Bucket APIs-4 ###################################
#
#  Scenario Outline:Give access of the folder to the users
#    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<Method>" and "<SampleName>" and "<stepName>"
#    Then Verify Status code <Expected_status>
#    Examples:
#      | endpoint     | Method | Expected_status | SampleName              | stepName                           |
#      | folderAccess | Post   | 200             | folderAccess_sampleJson | Test to give folder access to user |

  Scenario Outline:Give access of the folder to the users
    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<SampleName>" and "<SampleName1>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint     | endpoint1   | endpoint2       | Method | Expected_status | SampleName              | SampleName1                | stepName                           |
      | folderAccess | fileUpload3 | permanentDelete | Post   | 200             | folderAccess_sampleJson | permanentDelete_sampleJson | Test to give folder access to user |

  Scenario Outline:Remove access of the folder from the users
    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<SampleName>" and "<SampleName1>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | endpoint1   | endpoint2       | Method | Expected_status | SampleName              | SampleName1                | stepName                             |
      | folderAccess1 | fileUpload3 | permanentDelete | Post   | 200             | folderAccess_sampleJson | permanentDelete_sampleJson | Test to remove folder access to user |

  Scenario Outline:Remove access of the folder from the users when type provided is incorrect
    Given Post Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status | SampleName              |
      | folderAccess2 | Post   | 400             | folderAccess_sampleJson |

  Scenario Outline:Give access of the folder to the users when Bridge Token is not valid
    Given Set Post API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint     | Method | Expected_status | SampleName              |
      | folderAccess | Post   | 403             | folderAccess_sampleJson |

  Scenario Outline:Give access of the folder to the users when username is not found in Bearer token
    Given Set Post API without BT endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint     | Method | Expected_status | SampleName              |
      | folderAccess | Post   | 403             | folderAccess_sampleJson |
#
#     ######################## Bucket APIs-5 ###################################

  Scenario Outline:Change tag to public
    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<SampleName>" and "<SampleName1>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | endpoint1   | endpoint2       | Method | Expected_status | SampleName           | SampleName1                | stepName                     |
      | changeTag | fileUpload3 | permanentDelete | Post   | 200             | publicTag_sampleJson | permanentDelete_sampleJson | Test to change tag to public |
###
  Scenario Outline:Change tag to private
    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<SampleName>" and "<SampleName1>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | endpoint1   | endpoint2       | Method | Expected_status | SampleName            | SampleName1                | stepName                     |
      | changeTag | fileUpload3 | permanentDelete | Post   | 200             | privateTag_sampleJson | permanentDelete_sampleJson | Test to change tag to public |
###
###
  Scenario Outline:Change tag to public when Bridge Token is not valid
    Given Set Post API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName           |
      | changeTag | Post   | 403             | publicTag_sampleJson |

  Scenario Outline:Change tag to public when username is not found in Bearer token
    Given Set Post API without BT endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName           |
      | changeTag | Post   | 403             | publicTag_sampleJson |
##
  Scenario Outline:Change tag to public when tag provided is incorrect
    Given Post Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName            |
      | changeTag | Post   | 206             | publicTag2_sampleJson |
#
###    ######################## Bucket APIs-6 ###################################
###
  Scenario Outline:Moving the files to the recycle bin
    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<SampleName>" and "<SampleName1>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | endpoint1   | endpoint2       | Method | Expected_status | SampleName           | SampleName1                | stepName                     |
      | deleteTag | fileUpload3 | permanentDelete | Post   | 200             | deleteTag_sampleJson | permanentDelete_sampleJson | Test to change tag to public |

  Scenario Outline:Moving the files to the recycle bin when Bridge Token is not valid
    Given Set Post API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName           |
      | deleteTag | Post   | 403             | deleteTag_sampleJson |

  Scenario Outline:Moving the files to the recycle bin when username is not found in Bearer token
    Given Set Post API without BT endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName           |
      | deleteTag | Post   | 403             | deleteTag_sampleJson |

  Scenario Outline:Moving the files to the recycle bin when tag provided is incorrect
    Given Post Suite-API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName            |
      | deleteTag | Post   | 206             | deleteTag2_sampleJson |
#
##      ######################## Bucket APIs-7 ###################################
##
  Scenario Outline:Get the file from recycle bin
    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<SampleName>" and "<SampleName1>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | endpoint1   | endpoint2       | Method | Expected_status | SampleName            | SampleName1                | stepName                     |
      | deleteTag | fileUpload3 | permanentDelete | Post   | 200             | deleteTag3_sampleJson | permanentDelete_sampleJson | Test to change tag to public |
##
##
  Scenario Outline:Deleting the Files Permanently
    Given Post Suite-API endpointt and methodd and SampleNamee and step "<endpoint>" and "<endpoint1>" and "<Method>" and "<SampleName>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint        | endpoint1   | Method | Expected_status | SampleName                 | stepName                               |
      | permanentDelete | fileUpload3 | Post   | 200             | permanentDelete_sampleJson | Test to Deleting the Files Permanently |
##
  Scenario Outline:Deleting the Files Permanently when Bridge Token is not valid
    Given Set Post API endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint        | Method | Expected_status | SampleName                 |
      | permanentDelete | Post   | 403             | permanentDelete_sampleJson |
#
  Scenario Outline:Deleting the Files Permanently when username is not found in Bearer token
    Given Set Post API without BT endpoint and method and SampleName "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint        | Method | Expected_status | SampleName                 |
      | permanentDelete | Post   | 403             | permanentDelete_sampleJson |
###
###       ######################## Bucket APIs-8 ###################################
  Scenario Outline: File upload before moving to recycle bin
    Given Set endpointt "<endpoint>" and "<endpoint1>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | endpoint1       | Method | SampleName                 | Expected_status |
      | fileUpload1 | permanentDelete | post   | permanentDelete_sampleJson | 200             |
#
  Scenario Outline: File upload again by text
    Given Set endpoint with text "<endpoint>" and "<endpoint1>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | endpoint1       | Method | SampleName                 | Expected_status |
      | fileUpload3 | permanentDelete | post   | permanentDelete_sampleJson | 200             |
#
  Scenario Outline:Moving the files to the recycle bin before getting
    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<SampleName>" and "<SampleName1>" and "<stepName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | endpoint1   | endpoint2       | Method | Expected_status | SampleName           | SampleName1                | stepName                     |
      | deleteTag | fileUpload3 | permanentDelete | Post   | 200             | deleteTag_sampleJson | permanentDelete_sampleJson | Test to change tag to public |
#
#
  Scenario Outline:Get the Files which are in recycle bin
    Given Sett token endpoint and method "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<endpoint3>" and "<Method>" and "<Method1>" and "<SampleName>" and "<SampleName2>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | endpoint1   | endpoint2 | endpoint3       | Method | Method1 | SampleName           | SampleName2                | Expected_status |
      | getrecyclebin | fileUpload3 | deleteTag | permanentDelete | get    | post    | deleteTag_sampleJson | permanentDelete_sampleJson | 200             |
###
  Scenario Outline:Get the Files which are in recycle bin when Bridge Token is not valid
    Given Set Wrong token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status |
      | getrecyclebin | get    | 403             |

  Scenario Outline:Get the Files which are in recycle bin when username is not found in Bearer token
    Given Set endpoint and method without bearer token "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status |
      | getrecyclebin | get    | 403             |

#
  Scenario Outline:Get the Files when there is no file in recycle bin
    Given Setting token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status |
      | getrecyclebin | get    | 404             |
#
###       ######################## Bucket APIs-9 ###################################

  Scenario Outline:Get the Files when files are public
    Given Get file by setting Authentication: endpoint and method "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<Method>" and "<Method1>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | endpoint1   | endpoint2       | Method | Method1 | SampleName                 | Expected_status |
      | getFile  | fileUpload3 | permanentDelete | get    | post    | permanentDelete_sampleJson | 200             |

##  ##file name jidhar change hoega udhr iske parameters me same name ayega
  Scenario Outline:Get the Files when it is private with Authentication
    Given Gett file by settingg Authentication: endpoint and method "<endpoint>" and "<endpoint1>" and "<endpoint2>" and "<endpoint3>" and "<Method>" and "<Method1>" and "<SampleName>" and "<SampleName1>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | endpoint1   | endpoint2       | endpoint3 | Method | Method1 | SampleName                 | SampleName1           | Expected_status |
      | getFile  | fileUpload3 | permanentDelete | changeTag | get    | post    | permanentDelete_sampleJson | privateTag_sampleJson | 200             |
##
  Scenario Outline:Get the Files when username is not found in token and file is private.
    Given Get file by setting endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | getFile  | get    | 404             |
#
#  Scenario Outline:Moving the files to the recycle bin before get file.
#    Given Post Suite-API endpoint and method and SampleName and step "<endpoint>" and "<Method>" and "<SampleName>" and "<stepName>"
#    Then Verify Status code <Expected_status>
#    Examples:
#      | endpoint  | Method | Expected_status | SampleName           | stepName                                    |
#      | deleteTag | Post   | 200             | deleteTag_sampleJson | Test to Moving the files to the recycle bin |
#
  Scenario Outline:Get the Files when file is in recycle bin.
    Given Get file by setting Authentication, endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | getFile  | get    | 404             |
##
  Scenario Outline:Get the Files when file not found
    Given Get file by setting Authentication, endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | getFile  | get    | 404             |
##
  Scenario Outline:Get the Files when file is private and user not have permission to see it.
    Given Get file by setting Authentication, endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | getFile  | get    | 404             |
#
##    ###############-----#################
##
  Scenario Outline: To Validate Username (GET)
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | Method | Expected_status |
      | getTokkenCount | get    | 200             |
#
  Scenario Outline: To Validate Username (GET) when header is not given
    Given Set Empty token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | Method | Expected_status |
      | getTokkenCount | get    | 403             |
#
  Scenario Outline: To Validate Username (GET) when wrong authentication passed
    Given Set Wrong token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint       | Method | Expected_status |
      | getTokkenCount | get    | 403             |
#
  Scenario Outline: Get Report Names(GET)
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status |
      | reportNames | get    | 200             |
#
  Scenario Outline: Get Report Names(GET) when header is not given
    Given Set Empty token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status |
      | reportNames | get    | 403             |
#
  Scenario Outline: Get Report Names(GET) when wrong authentication passed
    Given Set Wrong token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status |
      | reportNames | get    | 403             |

  Scenario Outline: Post Module (POST)
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status | SampleName |
      | postModuleApi | post   | 201             | postModule |

  Scenario Outline: Get Module name list (GET)
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint     | Method | Expected_status |
      | getModuleApi | get    | 200             |
#
  Scenario Outline: Get Module name list (GET) with no bearer token
    Given Set emptyyy token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint     | Method | Expected_status |
      | getModuleApi | get    | 403             |

  Scenario Outline: Module already exists (409 CONFLICT)
    Given Set posttt token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status | SampleName  |
      | postModuleApi | post   | 409             | postModule1 |
#
  Scenario Outline: Update Module (PUT)
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status | SampleName |
      | postModuleApi | put    | 200             | putModule  |

  Scenario Outline: Update Module (PUT) with no bearer token
    Given Set post empty token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status | SampleName |
      | postModuleApi | put    | 403             | putModule  |
#
  Scenario Outline: Module already exists (409 CONFLICT) PUT case
    Given Set posttt token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status | SampleName |
      | postModuleApi | put    | 409             | putModule1 |
#

  Scenario Outline: Post Rules(POST)
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status | SampleName    |
      | postRuleApi | post   | 200             | postRuleApiis |

  Scenario Outline: Post Rules(POST) when report id is invalid
    Given Sett posttt token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status | SampleName     |
      | postRuleApi | post   | 400             | postRuleApiis1 |

  Scenario Outline: Post Rules(POST) with no bearer token
    Given Set post empty token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status | SampleName    |
      | postModuleApi | post   | 403             | postRuleApiis |

  Scenario Outline: Get Rule Action(GET)
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status |
      | getRuleApis | get    | 200             |

  Scenario Outline: Get Rule Action(GET) when header is not given
    Given Set Empty token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status |
      | getRuleApis | get    | 403             |

  Scenario Outline: Get Rule Action(GET) when wrong authentication passed
    Given Set Wrong token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status |
      | getRuleApis | get    | 403             |

  Scenario Outline: Get Rule Action(GET) when s_run_id is wrong
    Given Setttz token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status |
      | getRuleApis11 | get    | 400             |

#  Scenario Outline: Last 5 Suites
#    Given sett tokenn endpointt and method "<endpoint>" and "<Method>"
#    Then Verify Status code <Expected_status>
#    Examples:
#      | endpoint    | Method | Expected_status |
#      | lastFiveApi | get    | 200             |

  Scenario Outline: Last 5 Suites when s_run_id is not valid
    Given sett tokenn endpointt and methodd "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint     | Method | Expected_status |
      | lastFiveApi1 | get    | 400             |

  Scenario Outline: Enter point API
    Given sett tokenn endpointt and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | pointApi | get    | 200             |

  Scenario Outline: Enter point API when wrong bridge token is passed
    Given sett tokenn endpointt and methoddd "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | pointApi | get    | 403             |

  Scenario Outline: API to get the List of Suites in the Application
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | suiteApi | get    | 200             |

  Scenario Outline: If the User does not have access to any projects (suiteApi)
    Given Set user wrong token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | suiteApi | get    | 400             |

  Scenario Outline: If Page No is invalid
    Given Setttz token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status |
      | suiteApi3 | get    | 400             |

  Scenario Outline: API to get the List of Suites in the Application when wrong authentication passed
    Given Set Wrong token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | suiteApi | get    | 403             |

  Scenario Outline: API to get the List of Suites in the Application when header is not given
    Given Set Empty token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | suiteApi | get    | 403             |

  Scenario Outline: API to Create the Suite in the Application
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName |
      | suiteApi | post   | 201             | suiteApi   |

  Scenario Outline: When the user does not have write access to the project
    Given Set post user wrong token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName |
      | suiteApi | post   | 400             | suiteApi   |

  Scenario Outline: Report Name Already Exists in the same project with same report name
    Given Sett posttt token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName |
      | suiteApi | post   | 409             | suiteApi2  |

  Scenario Outline: API to get the List of Tests in the Application
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | testApi  | get    | 200             |

  Scenario Outline: If Test Case Details are not found
    Given Setttz token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | testApi2 | get    | 400             |

  Scenario Outline: If the User does not have access to any projects (testApi)
    Given Set user wrong token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | testApi  | get    | 400             |

  Scenario Outline: If Suite Details are not found (testApi)
    Given Set user wrong token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | testApi3 | get    | 400             |

  Scenario Outline: If Page No is invalid (testApi)
    Given Set user wrong token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status |
      | testApi4 | get    | 400             |

  Scenario Outline: API to Create the Test case in the Application
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName |
      | testApi  | post   | 201             | testApi    |

  Scenario Outline: When the user does not have write access to the project (testApi)
    Given Set post user wrong token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName |
      | testApi  | post   | 400             | testApi    |

  Scenario Outline: Report Name Already Exists in the same project with same report name (testApi)
    Given Sett posttt token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName |
      | testApi  | post   | 400             | testApi2   |

  Scenario Outline: Suite details are not found (testApi)
    Given Sett posttt token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint | Method | Expected_status | SampleName |
      | testApi  | post   | 400             | testApi3   |















#
#
#
#
#
#
#
#
#
#
#
#
#
#
