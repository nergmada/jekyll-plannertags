lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll/plannertags/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-plannertags"
  spec.version       = Jekyll::Plannertags::VERSION
  spec.authors       = ["Adam Green"]
  spec.email         = ["adam.green@kcl.ac.uk"]

  spec.summary       = %q{ A gem for auto generating links to planner tag pages on the planning.wiki website }
  spec.homepage      = "https://www.planning.wiki/"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nergmada/jekyll-plannertags"
  spec.metadata["changelog_uri"] = "https://github.com/nergmada/jekyll-plannertags"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'jekyll', "~> 3.8.5"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
