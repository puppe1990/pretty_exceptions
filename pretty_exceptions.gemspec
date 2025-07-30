Gem::Specification.new do |spec|
  spec.name          = "pretty_exceptions"
  spec.version       = PrettyExceptions::VERSION
  spec.authors       = ["puppe1990"]
  spec.summary       = "A Rails engine for Tailwind-styled exception pages"
  spec.files         = Dir.glob("lib/**/*") + Dir.glob("app/**/*") + ["pretty_exceptions.gemspec"]
  spec.require_paths = ["lib"]
  spec.add_dependency "rails", ">= 5.0"
end
