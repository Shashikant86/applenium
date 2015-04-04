$:.push File.expand_path('../lib', __FILE__)
require 'applenium/version'

Gem::Specification.new do |s|
  s.name        = 'applenium'
  s.version     = Applenium::VERSION
  s.date        = Time.now
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.summary     = 'Appium and Selenium used with Ruby Cucumber'
  s.description = 'Mobile and Web apps automation framework using Appium, Selenium and Cucumber'
  s.authors     = 'Shashikant86'
  s.homepage    = ''
  s.email       = 'shashikant.jagtap@aol.co.uk'
  s.require_paths = ['lib']
  s.post_install_message = 'Thank you for installing applenium gem.'
  s.add_runtime_dependency "cucumber",  '~> 1.3', '>= 1.3.18'
  s.add_runtime_dependency "capybara", '~> 2.4.4', '>= 2.4.1'
  s.add_runtime_dependency "rspec", '~> 3.2.0', '>= 3.0.0'
  s.add_runtime_dependency "selenium-webdriver", '~> 2.44.0', '>= 2.41.0'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
