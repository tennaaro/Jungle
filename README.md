# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Homepage
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%205.43.06%20PM.png?raw=true)

## Sold Out Badge
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%205.45.31%20PM.png?raw=true)

## Details Page
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%205.47.19%20PM.png?raw=true)

## Admin Dashboard
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%205.48.26%20PM.png?raw=true)

## Admin All Products
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%205.48.45%20PM.png?raw=true)

## Admin Create New Product
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%205.49.33%20PM.png?raw=true)

## Admin All Categories
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%205.49.57%20PM.png?raw=true)

## Admin Create New Category
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%205.50.10%20PM.png?raw=true)

## Login Page
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%205.56.54%20PM.png?raw=true)

## Signup Page
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%205.57.07%20PM.png?raw=true)

## Empty Cart Page
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%205.56.23%20PM.png?raw=true)

## Cart Page
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%206.00.00%20PM.png?raw=true)

## Checkout Pages
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%206.00.14%20PM.png?raw=true)
!["Homepage"](https://github.com/tennaaro/Jungle/blob/master/docs/Screen%20Shot%202021-11-17%20at%206.00.49%20PM.png?raw=true)