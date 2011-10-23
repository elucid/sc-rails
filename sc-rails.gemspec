$:.push File.expand_path("../lib", __FILE__)
require "sc-rails/version"

Gem::Specification.new do |s|
  s.name        = "sc-rails"
  s.version     = SC::Rails::VERSION
  s.authors     = ["Justin Giancola, Jimmy Cuadra"]
  s.email       = ["justin.giancola@gmail.com"]
  s.homepage    = "https://github.com/elucid/sc-rails"
  s.summary     = %q{Handlebars compilation for the Rails asset pipeline.}
  s.description = %q{This gem adds handlebars.js compilation to the Rails 3.1 asset pipeline and provides packaged builds of SproutCore 2.0}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'rails', '~> 3.1.0'
  s.add_development_dependency 'rspec'
end
