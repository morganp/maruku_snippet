# encoding: UTF-8
require 'maruku'

module MaRuKuSnippet
  VERSION = '0.0.1'
end

## ruby 1.9.2+ methods first fall back to 1.8 style 
begin
  require_relative 'maruku_snippet/maruku_snippet_document'
rescue
  require 'maruku_snippet/maruku_snippet_document'
end

# This is the public interface
class MarukuSnippet < MaRuKuSnippet::Document; 
end

