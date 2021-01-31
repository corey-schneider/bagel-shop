# Bagel Patch Website
##### Created & designed by Corey Schneider
###### In-progress Computer Science B.S. at the University of North Carolina - Charlotte

#

### Credit to open-source contributors / tools used in the development of this project

Bagel Patch uses a number of open-source projects to work properly:
* [Twitter Bootstrap] - Open-source CSS framework *(this makes the website pretty)*
* [jQuery] - A fast, small, and feature-rich JavaScript library
* [Ruby on Rails] - Web application framework
* [Cloud9] - In-browser IDE and server
* [Heroku] - Made deployment of this application VERY simple

#

# TO DO:
* ~~Enable "articles" (section 5 of https://guides.rubyonrails.org/getting_started.html)~~
* ~~Add all contents to the menu~~
* ~~Click on carousel to be taken to the menu~~
* ~~Clickable phone / address links in footer~~
* ~~Make the navigation bar look less like puke~~
* ~~Make navigation bar work for mobile users~~
* ~~Do not allow guests users to edit / delete / create any articles~~
* ~~Footer link opens in new tab~~
* ~~Administrator control panel~~
* ~~Admin nav bar quick-controls~~
* ~~Log out nav bar item for USERS only~~
* ~~Visiting /login while logged in allows you to log in again. Remove that~~
* Make a portal ~~and tie this into "deals" so logged-in users can edit / delete deals~~, testimonials, pictures, etc
* **Do not allow guests to view / ~~edit / delete /~~ create any users (/users)**
* Add picture gallery section
* ~~Add contact us section with a space for a user to leave a testimonial that can be featured (and a chance to win a dozen bagels or something)~~
  * Instead, encourage a review on our Google page for a free entry to win a dozen bagels.
* Sign up with your email for exclusive offers? Point system with accounts maybe?
* Leave website feedback in bottom right corner - Add CAPTCHA for this
* Login CAPTCHA after 1 failed attempt
* ~~Add Google maps iframe of store~~
* ~~Make login email non-case sensitive~~
  * Solution: `sessions_controller.rb`, create method: add .downcase before email parameter is sent to database
* ~~Add content to Contact section~~
* Add 404 pages before publishing
* ~~Consider adding HTTPS~~
  * Solution: Porkbun --> Cloudflare --> Heroku
* Brute force password protection (CAPTCHA would fix this)
* Change password minimum from 6 --> 8
* https://guides.rubyonrails.org/security.html
* app/controllers/application_controller.rb: [Return 404 instead of 302](https://github.com/CanCanCommunity/cancancan/wiki/exception-handling) and do the same for /admin
* ~~Fix navigation collapse (mobile view) not working~~
* Catering
* Fix favicon to be creative commons licensed
* Individual bagel pictures
* Individual cream cheese pictures
* Omelette tab

### Current permissions:
* Admins can adjust admin roles for ALL users
* Users / guests cannot adjust admin roles
* Users can change their password and edit their account, but nobody else's
* Guests (non-logged in users) can see a list of the users
* Admin panel is only for admins

### Goal permissions:
* ~~Make guests unable to see the user list (or at least email addresses)~~
* Make guests unaware that /admin even exists. Throw a 404

### Important information:
* Addressed bootstrap issue [@30553](https://github.com/twbs/bootstrap/issues/30553) - Bootstrap 4.4.1 collapse doesn't work with jQuery 3.5.0.
  * Solution: _downgrade jQuery to 3.4.1 in `./package.json`_
    * Problem with this: jQuery 3.4.1 has a security vulnerability (CVE-2020-11022)

#### [HTML formatter](https://www.freeformatter.com/html-formatter.html)

[//]: # (To send the application to Heroku:)
[//]: # (git add .)
[//]: # (git commit -m "")
[//]: # (git push origin master)
[//]: # (git push heroku master)

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax ..... And thank you https://dillinger.io/ for making my README easier to make!)


  [Twitter Bootstrap]: <https://getbootstrap.com/>
  [jQuery]: <http://jquery.com>
  [Ruby on Rails]: <https://rubyonrails.org/>
	
  [git-repo-url]: <https://github.com/joemccann/dillinger.git>
  [john gruber]: <http://daringfireball.net>
  [df1]: <http://daringfireball.net/projects/markdown/>
  [markdown-it]: <https://github.com/markdown-it/markdown-it>
  [Ace Editor]: <http://ace.ajax.org>
  [node.js]: <http://nodejs.org>
  [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
  [express]: <http://expressjs.com>
  [AngularJS]: <http://angularjs.org>
  [Gulp]: <http://gulpjs.com>
  [Cloud9]: <https://github.com/c9/core>
  [Heroku]: <https://heroku.com/>