module MaRuKuSnippet
  class Document

    def initialize( markdown )
      @markdown = markdown
    end

    ## TODO or maybe not, we currently cut styling  -- == underlining if it is on the line after the cut off length.
    # would you want a snippet ending with a heading though?

    def to_html_snippet( lines=-1 )
      if lines == -1
        return Maruku.new(@markdown).to_html 
      else

        markdown_a    = @markdown.split("\n")
        markdown_temp = (markdown_a[0...lines]).join("\n")

        ## Is the input text longer than cut off length
        if markdown_a.size > lines
          ## Are we mid table ?
          mid_table       = false
          if markdown_a[lines-1].match(/\|/) and markdown_a[lines].match(/\|/)
            mid_table = true
          end

          ## Looking for markdown elements we can not break (Link targets, tables)
          (markdown_a[lines...(markdown_a.size)]).each_with_index do |text, index| 
            ## Make sure keep link targets
            if text.match(/^[ \t ]*\[[\W\w]*\]:[\W\w]*/)
              markdown_temp << "\n" + text
            end

            if mid_table
              #Still parsing table or have we finished
              if text.match(/\|/) 
                markdown_temp << "\n" + text
              else
                mid_table        = false
              end
            end

          end
        end
        return Maruku.new(markdown_temp).to_html   
      end
    end

    ## Delegate to to Maruku via method missing
    def method_missing(method, *args, &block)
      delegate = Maruku.new( @markdown )
      if delegate.respond_to? method
        return delegate.send(method)
      else
        raise NoMethodError
      end
    end
  end

end


