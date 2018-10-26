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
  Read the config/secrets.yml file to set appropriate enviornment variables
  Development Environment Variables

  email_provider_username: <%= ENV["GMAIL_USERNAME"] %>
  email_provider_password: <%= ENV["GMAIL_PASSWORD"] %>
  domain_name: <%= ENV["GMAIL_DOMAIN_NAME"]%>
  secret_key_base: very_long_random_string
  gcs_bucket: <%= ENV["GCS_BUCKET"]%>
  gcs_project: <%= ENV["GCS_PROJECT"]%>
  gcs_credentials: <%= ENV["GOOGLE_CREDENTIALS"] %>
  site_title: <%= ENV["SITE_TITLE"] %>

  Production Environment Variables
  admin_name: <%= ENV["ADMIN_NAME"] %>
  admin_email: <%= ENV["ADMIN_EMAIL"] %>
  admin_password: <%= ENV["ADMIN_PASSWORD"] %>
  email_provider_username: <%= ENV["GMAIL_USERNAME"] %>
  email_provider_password: <%= ENV["GMAIL_PASSWORD"] %> 
  domain_name: <%= ENV["DOMAIN_NAME"] %>
  gcs_bucket: <%= ENV["GCS_BUCKET"]%>
  gcs_project: <%= ENV["GCS_PROJECT"]%>
  gcs_credentials: <%= ENV["GOOGLE_CREDENTIALS"] %>


*
...
