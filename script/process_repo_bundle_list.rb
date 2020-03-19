# frozen_string_literal: true

path = ARGV[0]
return unless path

text = File.read(File.join(path, "repo-bundle-list.tmp"))
gemspec_basename = File.basename(Dir["#{path}/*.gemspec"][0], ".gemspec")
data = text.scan(%r!\s+\* (.*) \((.*)\)!).reject do |(name, version)|
  name.start_with?("rubocop") || name == gemspec_basename
end
File.open(File.join(path, 'Gemfile'), "wb") do |f|
  f.puts(<<~TXT)
  # frozen_string_literal: true

  source "https://rubygems.org"
  gemspec

  # rubocop:disable Bundler/OrderedGems
  TXT
  data.each { |name, version| f.puts("gem #{name.inspect}, #{version.inspect}") }
  f.puts('gem "rubocop-jekyll", :github => "jekyll/rubocop-jekyll"')
  f.puts "# rubocop:enable Bundler/OrderedGems"
end
