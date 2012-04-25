# encoding: UTF-8
require 'maruku'

module MaRuKuSnippet
  VERSION = '0.0.1'
end

require 'maruku_snippet/maruku_snippet_document'

# This is the public interface
class MarukuSnippet < MaRuKuSnippet::Document; 
end

