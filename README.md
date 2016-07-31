# SheNomads Tracker

# Contributing

## What you'll need to contribute
1. Rails 4.2.5.2
2. Ruby 2.1.3p242
3. Empathy
4. MySql
5. A sense of humor

## Fork the Repo
1. In the top-right corner of the page, click Fork.
2. On GitHub, navigate to your fork of the Tracker repository.
3. Under your repository name, click Clone or download.
4. In the Clone with HTTPs section, click  to copy the clone URL for the repository.
5. Open Terminal.
6. Type git clone, and then paste the URL you copied in Step 3. It will look like this, with your GitHub username instead of YOUR-USERNAME: 

```
  $ git clone https://github.com/YOUR-USERNAME/tracker
  $ cd tracker
```

Install the dependencies:

```
brew update
brew install mysql
```

Setup the database:

```
currently looking for some help on creating seed data !!!

```


Install gems:

```
  $ bundle install
```

Run the application:

```
  $ rails server
```

## Log In with Facebook Omniauth
1. Copy the example omniauth file
```
cp config/initializers/omniauth.rb.example config/initializers/omniauth.rb
```
2. Get Facebook authentication 
https://richonrails.com/articles/facebook-authentication-in-ruby-on-rails

3. Fill in 
```
FACEBOOK_APP_ID = 'yourid'
FACEBOOK_APP_SECRET = 'yoursecret'
```
with the ids that Facebook provides.


## Add A Feature
1.Create a branch that is named after the feature you are working on. 
For example: 

```
git co -B add-notes-to-user-profile

```


2.Commit and push to the remote repository:

```
  $ git commit -m "Add some feature"
  $ git push origin master
```

3.Make a pull request.
