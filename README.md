#### Aesthetic Clinic

##### Setup / First Time Installation

- make sure that when this repo is cloned and pulled, that the first thing you do is to run `bundle` and then `bundle install`
- It is possible that one of the migrations is messed up, particularly with adding passwords to Users. It was working just fine on my development box, but for some reason other users of this repository are reporting that the migration is nowhere to be found, even though I do __not__ recall manually adding a field to the schema. So create that migration if necessary. 
- double check the seedfile to make sure that the data is valid and can be propagated to the DB.
- run `rails db:migrate`

---

##### Issues / Notes

###### Progress 07/10/2018
- Got modals to work
- Made some progress on Layouts and views
- Added date time picker.

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
~~Make procedures a grid of images that pop out into Modals [like this](jadlimcaco.com/work)~~ |
Add "Request An Appointment Today" section on Homepage [like this](advanceddhcare.com) | 
Make procedure modals show only 6 at first with a 'View More Button' |
~~Add Styling to User Profile Page~~ |
Add content to Footer |
Fix behavior of sidebar on Turbolinks |
Add 2 nice consistent font families |
Add image assets and descriptions for procedures |
Make procedure images show the name on Hover for large viewports and show the name under them for small viewports |
Fix appointments view in User Show Page |
Add link in sidebar and styling for user index page |


