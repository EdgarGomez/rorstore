# Ruby on Rails Store
Test application developed in Ruby on rails. It focuses in create saleable items(books) and allow to buy them paying with credit card. There is a dashboard allowing to see sales and buys of every user.

### App live preview
Hosted on Heroku, you can view the app here: [rubybookstore.herokuapp.com](http://rubybookstore.herokuapp.com)

### Installing the app

Once you downloaded/clone the code, run in you terminal:

    bundle install
    bundle update
    rails server

If there is any problem, use "sudo". Then, open http://localhost:3000 and the app must be running.

### Used gems and services

Used extra gems:
```ruby
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
gem 'simple_form'
gem 'devise'
gem 'cancan'
gem 'paperclip'
gem 'aws-sdk'
gem 'friendly_id'
gem 'stripe'
gem 'aasm'
gem 'dotenv-rails'
```

Services connected to the application:
    - Amazon AWS (images and resources hosting)
    - Stripe (credit card payments)
    - Heroku (app hosting and deployment)

### Dotenv gem
This gem provides a development enviroment using a file wich contains all the keys from services as variables. This file is in .gitignore so you can't see it in the repository. The file must contain something like:

```
export AWS_BUCKET=nameofthebucket
export AWS_ACCESS_KEY_ID=youraccesskey
export AWS_SECRET_ACCESS_KEY=yoursecretkey
export STRIPE_PUBLISHABLE_KEY=yourpublishablekey
export STRIPE_SECRET_KEY=yourstripesecretkey
```






This is a test application, developed and used for learn Ruby on Rails. It was made following the steps from stuk.io. If you need help contact me in [http://edgargomez.es/#contacts](http://edgargomez.es/#contacts)

