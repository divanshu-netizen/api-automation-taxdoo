# api-automation-taxdoo
Automation of api using Robot Framework's requests & collection library.

https://gorest.co.in/

2 APIs has been automated

Getting users details: Using GET method
Adding a new user: using POST method

Steps to run the script:

Prerequisites: 
1. Python
2. IDE (PyCharm or Visual Studio)
3. Following libraries:
  a. robotframework
  b. requests
  c. robotframework-requests
  d.robotframework-jsonlibrary
  
  ```pip install robotframework```
  ```pip install requests```
  ```pip install robotframework-requests```
  ```pip install robotframework-jsonlibrary```
  
  Clone the repository.
  Open the repo in your choice of IDE
  Go the the path
  .../API Automation/
  Run the script
  
  ```robot TC1_Get_Users.robot```
  
  ```robot TC2_CreateNewUser.robot```
  
 Please change the email id once you have run TC2, as it will throw error stating email already has been taken
 
 Once script is ran, 3 files will be generated in the same path.
 Output file is an xml file
 Log & Report files are HTML files which can be open and seen in a browser window for detailed steps & report
