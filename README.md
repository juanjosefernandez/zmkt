# zmkt - aka ZineBloom

This is a peer-to-peer selling and trading Ruby app for zines and mini-comics that is buil using the [Rails](http://rubyonrails.org) framework. At the moment this isn't ready for others to form or clone. The following parts of the README are yet to be built out. Excuse my dust, I'm over here learning! *Last Updated 10/08/2020*

## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org), [Bundler](http://bundler.io) and the [Heroku Toolbelt](https://toolbelt.heroku.com/) installed.

```sh
git clone git@github.com:heroku/ruby-rails-sample.git # or clone your own fork
cd ruby-rails-sample
bundle
bundle exec rake bootstrap
heroku local
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

```
heroku create
git push heroku master
heroku run rake db:migrate
heroku open
```

Alternatively, you can deploy your own copy of the app using the web-based flow:

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)
- [Getting Started with Ruby on Heroku](https://devcenter.heroku.com/articles/getting-started-with-ruby)
- [Heroku Ruby Support](https://devcenter.heroku.com/articles/ruby-support)

