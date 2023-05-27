# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Quick glance of the project

This is the main page where a user can see all the products listed out regardless of which category it belongs to.

This is the main page where a user can see all the products listed out regardless of which category it belongs to.
!["Screenshot of main page 1"]()
!["Screenshot of main page 2"]()
On the nav bar, users can select the category they want and it will take them to that category's list of products.
!["Screenshot of category page"]()
If the user is interested in a specific product, they can click on it and they will be redirected to that product page.
!["Screenshot of product page"]()
In the cart view, users can see which products they have added, and a breakdown of each product.
!["Screenshot of cart view"]()
This is what the payment process looks like if the user is ready to pay for their product.
!["Screenshot of payment view"]()
If user has admin access, they can add or delete products to the page.
!["Screenshot of admin page"]()

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
