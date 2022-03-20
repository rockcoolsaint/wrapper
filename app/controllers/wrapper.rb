class Wrapper
  def wrap(content, columns)
    @wrapped_output = ""
    content_list = content.split(" ") # split the string into an array

    if !content.blank? && columns.is_a?(Integer)
      content_list.each.with_index(1) do |item, i|
        if(i % columns == 0)
          @wrapped_output += "#{item}\n"
        elsif(i == content_list.length)
          @wrapped_output += "#{item}"
        else
          @wrapped_output += "#{item}\s"
        end
      end
    else
      @wrapped_output = "invalid parameters, please ensure you supply valid columns and content"
    end
    puts @wrapped_output # print out the output

    return @wrapped_output
  end
end
