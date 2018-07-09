#### Aesthetic Clinic

##### Setup / First Time Installation

- make sure that when this repo is cloned and pulled, that the first thing you do is to run `bundle` and then `bundle install`
- It is possible that one of the migrations is messed up, particularly with adding passwords to Users. It was working just fine on my development box, but for some reason other users of this repository are reporting that the migration is nowhere to be found, even though I do __not__ recall manually adding a field to the schema. So create that migration if necessary. 
- double check the seedfile to make sure that the data is valid and can be propagated to the DB.
- run `rails db:migrate`

---

##### Issues / Notes

###### Progress 06/30/2018
- Updated Rails version to 5.1.6
- added bootstrap and removed foundation
- got Bootstrap to start working properly

###### Useful links for Bootstrap:
1. [Modals](jtway.co/5-steps-to-add-remote-modals-to-your-rails-app-8c21213b4d0c) 

###### Useful Links (for foundation):
1. [Mircea Samuila](https://www.mirceasamuila.com/posts/bootstrap-modals-in-rails)
2. [Rails creating modals](https://qiita.com/Kolosek/items/4ee80eb0c6dd0af4b1b7)
3. [Reveal Modal | Foundation Docs](https://foundation.zurb.com/sites/docs/v/5.5.3/components/reveal.html)
4. [Reveal 'Open' Method throwing JS error · Issue #8482 · zurb/foundation-sites · GitHub](https://github.com/zurb/foundation-sites/issues/8482)
5. [[Reveal] $('#element').foundation('open') Does Not Open · Issue #9154 · zurb/foundation-sites · GitHub](https://github.com/zurb/foundation-sites/issues/9154)
6. [Using AJAX in a Ruby on Rails (Demo, Source Code) - Tests4Geeks](https://tests4geeks.com/ajax-in-rails/)

---

##### TODO:

- Change default layout for Sign In modal
- Make modal for sign up and apply Modal styles to that modal
- Make custom Navbar (see old project for styles maybe)
- remove new patient button from Admin users' view page for users
- add Modal for new appointment
- add modal for current user update
- add image assets to homepage



