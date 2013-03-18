Feature: directory operations

  As a user after connected to server
  User wants to make some operations on files and directories
  So that user can work on server

  Scenario: PWD, print working directory
    Given Client has connected to server
    When Client send cmd 'PWD'
    Then Server should respond with 257 "/" when called from root dir

  Scenario: CWD, change working directory
    Given Client has connected to server
    When Client send cmd 'CWD files'
    Then Server should respond with 250 if called with files from users home

  Scenario: LIST, list directory content
    Given Client has connected to server and entered Passive Mode
    When Client send cmd 'LIST'
    Then Server should respond with 150 when called in the root dir with no param

  Scenario: MKD, make a directory
    Given Client has connected to server
    When Client send cmd 'MKD four'
    Then Server should respond with 257 when the directory is created

  Scenario: SIZE, get a file size
    Given Client has connected to server
    When Client send cmd 'SIZE index.html'
    Then Server should always respond with 213 when called with a valid file param

  Scenario: RETR, retrieve a file from server
    Given Client has connected to server and entered Passive Mode
    When Client send cmd 'RETR index.html'
    Then Server should always respond with 150..226 when called with valid file

  Scenario: STOR, put a file to server
    Given Client has connected to server and entered Passive Mode
    When Client send cmd 'STOR index3.html'
    Then Server should always respond with 150 when called with valid file




