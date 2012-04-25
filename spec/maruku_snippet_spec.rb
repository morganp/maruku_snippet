
require 'spec_helper'

describe MarukuSnippet do
  it "Parse complete Markdown" do
    basic_md = "line1  \n[line2][]  \nline3  \nline4  \nline5  \n[line2]: http://google.co.uk"
    test = MarukuSnippet.new( basic_md )

    test.to_html.should == %{<p>line1<br /><a href='http://google.co.uk'>line2</a><br />line3<br />line4<br />line5</p>}

    snippet = test.to_html_snippet(10)
    snippet.should == %{<p>line1<br /><a href='http://google.co.uk'>line2</a><br />line3<br />line4<br />line5</p>}
  end

  it "Parse limited markdown with out breaking links" do
    basic_md = "line1  \n[line2][]  \nline3  \nline4  \nline5  \n[line2]: http://google.co.uk"
    test = MarukuSnippet.new( basic_md )

    test.to_html.should == %{<p>line1<br /><a href='http://google.co.uk'>line2</a><br />line3<br />line4<br />line5</p>}

    snippet = test.to_html_snippet(3)
    snippet.should == %{<p>line1<br /><a href='http://google.co.uk'>line2</a><br />line3</p>}
  end
end

