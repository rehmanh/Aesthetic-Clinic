#### Aesthetic Clinic

##### Setup / First Time Installation

- make sure that when this repo is cloned and pulled, that the first thing you do is to run `bundle` and then `bundle install`
- It is possible that one of the migrations is messed up, particularly with adding passwords to Users. It was working just fine on my development box, but for some reason other users of this repository are reporting that the migration is nowhere to be found, even though I do __not__ recall manually adding a field to the schema. So create that migration if necessary. 
- double check the seedfile to make sure that the data is valid and can be propagated to the DB.
- run `rails db:migrate`

---

##### Issues / Notes

###### Progress 07/31/2018
- Is a record number always unique?
- Can one patient have more than one record number
- Do I want to create association between the users that create their own accounts and the patients that are recorded internally?

---

##### Backlog: 

Frontend Backlog | Backend Backlog
---------------- | ---------------
~~Make custom navbar (see old project for style guides)~~ | Implement "Forgot your password" / password reset
Add image assets to procedures and home page | ~~Fix appointment validations~~
~~Make procedures modals~~ | Maybe send out mailers when appointment is scheduled.
~~Make footer that stays across pages (sticky footer)~~ | Remove Complaint from Appointments
~~Make custom flash messages~~ | Have a "Treatment?" or "Consultation" option for Patients
Fix error reporting on form modals | Consider adding record number column for users
~~Make hamburger menu consistent with sidebar~~ | look at how to send texts to users
~~Add button links to sidebar~~ | ADMC only on Fridays
Make colorscheme for site (start with sidebar) | Figure out how to make website better at crawling
Add "Request An Appointment Today" section on Homepage [like this](advanceddhcare.com) | Consider adding Local Users that won't be affected by the current User Profile page 
Make procedure modals show only 6 at first with a 'View More Button' | Fix has many associations length b/w user and appointments
~~Add Styling to User Profile Page~~ | Make a nice seedfile
Add content to Footer | Add record number field to users table
~~Fix behavior of sidebar on Turbolinks~~ | Search bar for users
Add 2 nice consistent font families | create PatientRecord table and associate with Users
Add image assets and descriptions for procedures |
Add appointments index page for admin users |
