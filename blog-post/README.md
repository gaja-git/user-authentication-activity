# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version :ruby 3.2.0 (2022-12-25 revision a528908271)

- System dependencies

- Configuration

- Database creation: psql (PostgreSQL) 15.1

1. Create project with postgre

- rails new postgres-rails-app -d postgresql

/config/database.yml
replace
line 26:postgres_rails_app_development - myblogdb
line 32: uncomment
line 35: uncomment give your password
line 40: uncomment

save it

/config/routes
root "application#index"

/app/application_controller
def index
render html: "Hello index"
end

rails generate migration create_user
add this to migration file
t.string :name
t.string :email
t.string :address
t.string :password_digest
t.string :phone_number
t.bigint :role_id

rails generate controller user

inorder hash the passsword
goto : gemfile
uncomment line 37 - bycrypt
then run bundle install

/config/routes
resources :user

in user_controller.rb
require 'bcrypt'
Add create for post operation

in user.rb model file
class User < ApplicationRecord
has_secure_password  
end

rails generate controller login
/config/routes
resources :login

add crud in login_controller

rails generate controller logout
/config/routes
resources :logout
add crud in logout_controller
