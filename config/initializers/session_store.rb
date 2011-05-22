# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_example_app_session',
  :secret      => '3099dac45252843b312cc13f891ec3d87eace580b5f04608b87cb251fa52a207e313935628700311c36aafc9ea2e72653cd7ea5fafc8eee12ab6c4621676b4c9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
