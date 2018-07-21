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
Make procedures modals | Maybe send out mailers when appointment is scheduled.
Make footer that stays across pages (sticky footer) | 
~~Make custom flash messages~~ |
Fix error reporting on form modals |
~~Make hamburger menu consistent with sidebar~~ |
~~Add button links to sidebar~~ |
Make colorscheme for site (start with sidebar) |

