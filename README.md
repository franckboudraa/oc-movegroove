# Move&Groove
#### Project for the OpenClassrooms Fullstack Developer Path
https://openclassrooms.com/projects/track-your-fitness-habits

- Handle user logins securely with the Devise Rubygem
- Perform basic programming tasks with Ruby
- Use Ruby with a database
- Create a Rails app

Preview:
https://movegroove.herokuapp.com

Made with Ruby on Rails, PostgreSQL.

Auth with Devise and Facebook OAuth.

Use Sendgrid API for mails.

Tests included. `rails t`

Hot reloading with Guard + LiveReload Chrome/Firefox extension:
    
    guard
    rails s

Set env variables with Figaro:


    # config/application.yml
    DATABASE_URL
    DEFAULT_SENDER_EMAIL
    FACEBOOK_APP_ID
    FACEBOOK_APP_SECRET
    SECRET_KEY_BASE
    SENDGRID_PASSWORD
    SENDGRID_USERNAME