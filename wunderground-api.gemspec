Gem::Specification.new do |s|

  s.name        = %q{wunderground-api}
  s.version     = "0.2.0"
  s.platform    = Gem::Platform::RUBY
  s.authors     = [ "Alex McHale" ]
  s.email       = [ "alexmchale@gmail.com" ]
  s.homepage    = "http://github.com/alexmchale/wunderground-api"
  s.summary     = "An API to Weather Underground."
  s.description = "Provides a simple interface to retrieve weather information from Weather Underground."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "wunderground-api"

  s.add_dependency "andand", ">= 1.3.1"
  s.add_dependency "xml-simple", ">= 1.0.12"

  s.files        = Dir.glob("lib/**/*") + %w( LICENSE README.markdown )
  s.require_path = "lib"

end
