# RuboCop Jekyll

A RuboCop extension to enforce common code style in Jekyll and Jekyll plugins.


## Installation

Just install the `rubocop-jekyll` gem

```
gem install rubocop-jekyll
```

or if you prefer Bundler, add it to your `Gemfile` or `gemspec`

```ruby
# Gemfile

gem "rubocop-jekyll", "~> 0.1.0"
```
```ruby
# <plugin>.gemspec

spec.add_development_dependency "rubocop-jekyll", "~> 0.1.0"
```
and run `bundle install`


## Usage

You need to tell RuboCop to load the extension and *inherit* the custom RuboCop configuration advocated by
[Jekyll](https://github.com/jekyll).

Place the following at the top of your `.rubocop.yml`.

```yaml
require: rubocop-jekyll
inherit_gem:
  rubocop-jekyll: .rubocop.yml
```

Running `bundle exec rubocop` will now automatically load the `rubocop-jekyll` cops together with the standard cops.


## Customization

You can override any settings inherited from the extension by subsequently redefining the concerned parameters.
