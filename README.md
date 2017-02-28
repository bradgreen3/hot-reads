# Hot Reads

## Table of Contents
- [Onboarding Tips](#onboarding)
  - [Heroku](#heroku)
  - [URLockbox](#lockbox)
- [Requirements](#requirements)
  - [Ruby on Rails](#ror)
- [Installation](#installation)
- [API Endpoints](#api-endpoints)
- [Gems](#gems)
- [Maintainer](#maintainer)
- [Running the Test Suite](#testing)

## [Onboarding tips](#onboarding)
### [Heroku](#heroku)
* Hot Reads: https://bg-hot-reads.herokuapp.com/
* URL Lockbox: https://bg-url-lockbox.herokuapp.com/

### [URLockbox](#lockbox)
* URLockbox sends information about read articles to Hot Reads. Hot Reads stores the information and gives you the opportunity to see if your links are on the Hot Reads Top Ten List. No Hot Reads account is necessary to use URLockbox.

## [Requirements](#requirements)
### [Ruby on Rails](#ror)
```
RAILS VERSION
  - 5.0.0.1

RUBY VERSION
  - 2.3.0p0

BUNDLED WITH
  - 1.13.7
```

## [Installation](#installation)

To install, clone https://github.com/bradgreen3/hot-reads.git and run the following commands:

```
bundle install
bundle exec rake db:{create,migrate}
```

To run development locally, use the command:
```
rails server
```

*Hot Reads API endpoints are hardcoded to production urls, but local host urls are commented out*

## [API Endpoints](#api-endpoints)

To receive top ten links from last 24 hours:
```
GET 'https://bg-hot-reads.herokuapp.com/api/v1/links'
```

To create a new link:
```
POST 'https://bg-hot-reads.herokuapp.com/api/v1/links/'
* pass in url in the params
```

### [Gems](#gems)
View Gemfile for notable dependencies

## [Maintainer](#maintainer)

* Brad Green - [bradgreen3](https://github.com/bradgreen3)

### [Running The Test Suite](#testing)

```ruby
rspec
```
