## Information

### Summary

This app is created to compare vin reports. App uses:

* [Bootstrap Rails gem](https://github.com/anjlab/bootstrap-rails)

This app is created using rails 4.0.0 and ruby 2.0.0p195.

### Work in Progress

#### Version 0.1

* Store VIN in db
* Two page only -> Home, Result
* Checkout compares NMVTIS report, CarFax and AutoCheck
* No Stripe yet
* Add jQuery in result page

#### Version 0.2

* Stripe Integration - ensure transaction is completed on current site contain momentum
* Decide whether to use vincompare.com to create a dashboard or redirect NMVTIS & CarFax elsewhere
* Look into potential hosting in another country to prevent any lawsuit possibility from CarFax

#### Version 0.3

* Based on decision on 0.2, create dashboard or create other sites for purchases
* Create Rspec test based on initial drafted test cases

### Thinks to think about

* Add vin_validator
* Obtain minimum 3 tables. VIN (vin_number, report_id - for nmvtis and carfax), NMVTIS (vin_spec), CarFax (vin_spec)
* Potential: Add User table with Stripe ID
* Create gem for AntiVin.su
* Look into AntiVin.su PHP code to possibly transfer to Ruby or just use existing PHP code for return values