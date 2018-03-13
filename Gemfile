source 'https://rubygems.org'

# Specify your gem's dependencies in health_check.gemspec

gemspec

group :development, :test do
  if defined?(JRUBY_VERSION)
    gem 'jruby-openssl'
    gem 'activerecord-jdbcsqlite3-adapter'
  else
    gem 'sqlite3', '~> 1.3.7'
  end
  # run travis-lint to check .travis.yml
  gem 'travis-lint'
  # mime-types 2.0 requires Ruby version >= 1.9.2
  # mime-types 3.0 requires Ruby version >= 2.0
  gem 'mime-types', defined?(JRUBY_VERSION) || RUBY_VERSION < '2.0' ? '< 3' : '>= 3.0'

end

gem 'rake', '< 12.3.0' if RUBY_VERSION < '2.0' # REQUIRED 
gem 'nokogiri', [">=0", "< 1.7.0"]  if RUBY_VERSION < '2.0' # REQUIRED
