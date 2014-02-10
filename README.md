## Information

### Summary

URL: [Vin Compare](http://vincompare.com)
This app is created to compare vin reports. Work in progress to utilize Edmunds API to provide vehicle resource and information.
This App's stack is as follows:

* Rails 4.0.0 and Ruby 2.1.0
* Heroku to host application
* Postgresql in production

### Completed
#### Version 0.1

* Able to store VIN in db
* Two page only -> Home, Result
* Compares NMVTIS report, CarFax and AutoCheck
* Add jQuery in result page
* Add vin_validator to validate VIN (user input)

#### Version 0.2

* Updated to bootstrap 3.1.0 maintained by 

### Work in Progress

#### Version 0.2

* Refactor code and add testing
* Use JS to add fancier vin check

#### Version 0.3

* Hook Edmunds API to compare decoded vin between two vehicles

#### Version 0.4

* Add Edmunds articles etc for more information related to that specific VIN
* Find vehicle listing API to provide relevant vehicle close by
