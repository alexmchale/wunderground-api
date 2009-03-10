# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{wunderground-api}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex McHale"]
  s.date = %q{2009-03-10}
  s.email = %q{alexmchale@gmail.com}
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["README.markdown", "lib/wunderground.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/alexmchale/wunderground-api}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{An API to Weather Underground.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
