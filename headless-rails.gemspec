require_relative "lib/headless/rails/version"

Gem::Specification.new do |spec|
  spec.name        = "headless-rails"
  spec.version     = Headless::Rails::VERSION
  spec.authors     = ["geekdreamzz"]
  spec.email       = ["bunnarith.bao@gmail.com"]
  spec.homepage    = "https://www.dataforgood.institute/open-source/headless-rails"
  spec.summary     = "Modern Headless CMS for Rails"
  spec.description = "An easy way to manage content and data in rails."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/geekdreamzz/headless-rails"
  spec.metadata["changelog_uri"] = "https://github.com/geekdreamzz/headless-rails/commit/main"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib,public}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4.3"
  spec.add_dependency "tailwindcss-rails", ">= 2.0.25"
  spec.add_dependency 'view_component', '>= 2.0'
  spec.add_dependency 'rails_components', '>= 0.1.0'
end
