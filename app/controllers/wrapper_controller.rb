class WrapperController < ApplicationController
  def wrap
    input_string_list = params[:content] ? params[:content].split(" ") : ""
    columns = (params[:columns] ? params[:columns] : "").to_i # convert the input param to integer
    @wrapped_output = ""

    if params[:commit] # if form is submitted
      if !params[:content].blank? && !params[:columns].empty?
        input_string_list.each.with_index(1) do |item, i|
          if(i % columns == 0)
            @wrapped_output += "#{item}\n"
          elsif(i == input_string_list.length)
            @wrapped_output += "#{item}"
          else
            @wrapped_output += "#{item}\s"
          end
        end
      else
        @wrapped_output = "invalid parameters, please ensure you supply valid columns and content"
      end
    end
    return @wrapped_output
  end
end
