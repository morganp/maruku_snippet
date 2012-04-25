
# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib")
require 'maruku-snippet'

Gem::Specification.new do |s|
s.name        = 'maruku-snippet'
s.version     = MarukuSnippet::VERSION
s.platform    = Gem::Platform::RUBY
s.authors     = ["Morgan Prior"]
s.email       = ["morgan@amaras-tech.co.uk"]
s.homepage    = "http://github.com/morganp/maruku-snippet"
s.summary     = %q{maruku-snippet TODO: Write a gem summary}
s.description = %q{maruku-snippet TODO: Write a gem description}

s.files         = `git ls-files`.split("\n")
s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
s.executables   = `git ls-files -- bin/*`.split("").map{ |f| File.basename(f) }
s.require_paths = ["lib"]

s.add_dependency('maruku', '>= 0.6.0')
end
