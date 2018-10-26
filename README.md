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

gem "rubocop-jekyll", "~> 0.3.0"
```
```ruby
# <plugin>.gemspec

spec.add_development_dependency "rubocop-jekyll", "~> 0.3.0"
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


## Release Cycle

A new release of this gem is manually cut based on the adoption of the latest version of RuboCop by the [Jekyll repository](https://github.com/jekyll/jekyll):

  1. RuboCop releases a new version.
  2. The `master` branch of Jekyll repository is updated to the latest RuboCop version along with any updates to their `.rubocop.yml`.
  3. The RuboCop version and `.rubocop.yml` at this gem's repository is updated **via a pull request**.
  4. A new minor release is subsequently cut and shipped.

*Note: A patch version of this gem will be released if Jekyll repository updates their `.rubocop.yml` independently of
a RuboCop version bump.*
