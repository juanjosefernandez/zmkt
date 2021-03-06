source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

#Use AWS
gem "aws-sdk-s3", require: false
# Use Devise - a flexible authentication solution for Rails based on Warden. It:
gem 'devise'
# Use Active Storage Validation Read more: https://github.com/igorkasyanchuk/active_storage_validations
gem 'active_storage_validations'
# Use Helper for creating css class strings inspired by ReactJS classSet: https://github.com/nLight/css-class-string
gem 'css-class-string'
# Use ImageProcessing gem for the actual transformations of the file: https://api.rubyonrails.org/classes/ActiveStorage/Variant.html
gem "image_processing" 
# Use MiniMagick for handling variants
gem "mini_magick"
# Use GutenTag - A good, simple, solid tagging extension for ActiveRecord. Allows for easy tagging and querying based on tags (AND, OR): https://github.com/pat/gutentag
gem 'gutentag', '~> 2.5'
# Use Mailboxer for messaging between users
gem 'mailboxer'
# Use bootstrap-will_paginate to extend will_paginate stylings to match the pagination styling conventions in Twitter's Bootstrap toolkit. https://github.com/yrgoldteeth/bootstrap-will_paginate and https://github.com/mislav/will_paginate
gem 'bootstrap-will_paginate'
# Use gravatar
gem 'gravatar_image_tag'
# Use Chosen to to use the 'chosen' jquery plugin to make long, unwieldy select boxes much more user-friendly.
gem 'jquery-rails'
gem 'chosen-rails' # not in use
gem 'compass-rails' #not in use
# Use select2-rails to make long, unwieldy select boxes much more user-friendly.
gem "select2-rails"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
# Use postgres as the database for Active Record
gem 'pg'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Use gravatar
  gem 'gravatar_image_tag'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Use gravatar
  gem 'gravatar_image_tag'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
  # Use gravatar
  gem 'gravatar_image_tag'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
