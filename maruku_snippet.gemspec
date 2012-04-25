
# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib")
require 'maruku_snippet'

Gem::Specification.new do |s|
s.name        = 'maruku_snippet'
s.version     = MaRuKuSnippet::VERSION
s.platform    = Gem::Platform::RUBY
s.authors     = ["Morgan Prior"]
s.email       = ["morgan@amaras-tech.co.uk"]
s.homepage    = "http://github.com/morganp/maruku-snippet"
s.summary     = %q{Just like Maruku but with snippets }
s.description = %q{maruku_snippet adds the to_html_snippet(lines) method.
All existing features of Maruku are delegated to Maruku.}

s.files         = `git ls-files`.split("\n")
s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
s.executables   = `git ls-files -- bin/*`.split("").map{ |f| File.basename(f) }
s.require_paths = ["lib"]

s.add_dependency('maruku', '>= 0.6.0')
end
