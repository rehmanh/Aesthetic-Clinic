#### Aesthetic Clinic

##### Setup / First Time Installation

- make sure that when this repo is cloned and pulled, that the first thing you do is to run `bundle` and then `bundle install`
- It is possible that one of the migrations is messed up, particularly with adding passwords to Users. It was working just fine on my development box, but for some reason other users of this repository are reporting that the migration is nowhere to be found, even though I do __not__ recall manually adding a field to the schema. So create that migration if necessary. 
- double check the seedfile to make sure that the data is valid and can be propagated to the DB.
- run `rails db:migrate`

---

##### Issues / Notes

###### Progress 08/16/2018
- Created PatientRecords table and linked with users
- Administrators cannot access the User table, but only the PatientRecords

---

##### Backlog: 

- [x] Make Users completely separated from the PatientRecord table
- [x] create views for the PatientRecord table
- [ ] fix date system for appointments
- [x] Add treatment information and patient history to PatientRecord table
- [x] Fix PatientNote resources
- [ ] Add image assets to procedures and home page
- [ ] Fix error reporting on Form Modals
- [ ] Add request an appointment today feature in the jumbotron on homepage
- [ ] Make procedure modals show only 6 at first with a view more button
- [ ] Add content to footer
- [ ] Add 2 consistent font families
- [ ] Add image assets and descriptions for procedures
- [ ] Add appointment index page for admins
- [ ] Implement forgot your password feature for users
- [ ] Figure out mailers for users that have an email address
- [ ] Remove complaint from appointments
- [ ] Have a 'treatment' or 'consultation' checkbox for Patient Appointments
- [ ] Figure out sending text messages to users
- [ ] Make robots better at crawling
- [ ] Make a basic seedfile
- [ ] Search bar for patient records
