maruku-snippet
==============

Extends MaRuKu markdown parsing to adding .to_html_snippet(lines).  
A simpe way to generate document previews with out breaking links. 

This might be useful for you main blog roll page to show a paragraph
from your last 10 posts, each followed by a read more link

NOT WORKING YET
==

Install
==

    gem install maruku-snippet
    
Usage
==

This just addes the to_html_snippet(lines) method to maruku, everything else stays the same.

    require 'maruku-snippet'

    doc = Maruku.new(markdown_string)
    puts doc.to_html_snippet(10)
