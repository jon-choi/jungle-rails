# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.
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

## Demo

    GIF of user logging in.
!["User Logging in"](https://github.com/jon-choi/jungle-rails/blob/master/docs/user_login.gif?raw=true)

    GIF of user adding items into their cart
!["User add to cart"](https://github.com/jon-choi/jungle-rails/blob/master/docs/user-addtocart.gif?raw=true)

    GIF of user paying for items with Khurram's credit card
!["user paying for items](https://github.com/jon-choi/jungle-rails/blob/master/docs/user-pay.gif?raw=true)

    View of the home page
!["Home page view"](https://github.com/jon-choi/jungle-rails/blob/master/docs/Home%20Page.png?raw=true)

    View of the sign up page
!["signup page"](https://github.com/jon-choi/jungle-rails/blob/master/docs/Signup%20page.png?raw=true)

    Product detail page
!["product detail"](https://github.com/jon-choi/jungle-rails/blob/master/docs/Product%20Details.png?raw=true)

    Admin category dashboard
!["admin category dashboard](https://github.com/jon-choi/jungle-rails/blob/master/docs/Admin%20Category%20Dashboard.png?raw=true)

    Enjoy! :)