Blog
==============

This Ruby on Rails v.4.2.1 blog app allows user to add posts and/or comment on posts.

Gems include pg, jquery-rails, bcrypt-ruby, quiet_assests, rspec-rails, capybara, launchy, and shoulda-matchers, among others.

Installation and Usage
------------

Clone or download this repository and enter `$ cd Desktop/blog` into the command line of the terminal. In another terminal window, enter `postgres`. Return to the original terminal window to enter the following statements.
```
$ rake db:create
$ rake db:migrate
$ gem install bundler
$ bundle
$ rails server
```

Open a Web browser. Navigate to *localhost:3000*.

Author
------

J. TURNER

License
-------

MIT license
