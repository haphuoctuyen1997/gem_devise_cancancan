# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
rails new demo
rails g scaffold post title:string body:text published:boolean
subl .

add_gem in gemfile:
gem 'devise'
gem 'cancancan'

bundle install
rails generate devise:install

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views


rails g devise:views
rails g devise USER
rails db:migrate

rails g migration addDetailsToUser name:string:uniq address:string phone:string role:integer
rails db:migrate:reset
rails db:migrate
rails g controller users show
rails g migration add_user_id_to_post user_id:interger
rails db:migrate:reset
rails db:migrate

role: gem cancancan
https://github.com/mezbahalam/devise_cancan
