maruku-snippet
==============

Extends MaRuKu markdown parsing to adding .to_html_snippet(lines).  
A simpe way to generate document previews with out breaking links. 

This might be useful for you main blog roll page to show a paragraph
from your last 10 posts, each followed by a read more link

Install
==

    gem install maruku_snippet
    
Usage
==

This just addes the to_html_snippet(lines) method to maruku, everything else stays the same.

    require 'maruku_snippet'

    doc = MarukuSnippet.new(markdown_string)
    puts doc.to_html_snippet(10)

Maruku would be:

    require 'maruku'

    doc = Maruku.new(markdown_string)
    puts doc.to_html

Markdown Syntax
==

For syntax see [DaringFireball][].

[DaringFireball]: http://daringfireball.net/projects/markdown/syntax
