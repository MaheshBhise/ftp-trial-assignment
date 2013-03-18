### a S3-FTPS server 
- - -

* start server

  ```ruby
  $ em-ftpd config.rb
  ```
  This will start server on 0.0.0.0 and port 40000 with
  username:test
  password:1234

* test 

  ```ruby  
  $ cucumber features
  $ rspec spec
  ```
  
