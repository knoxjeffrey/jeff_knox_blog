# frozen_string_literal: true

# FormHelpers
# FormTagHelper includes ActionView::Helpers::FormTagHelper so this class
# simply adjusts the method name to match the ActionView helper names and calls it
# If the method does not exist in ActionView::Helpers::FormTagHelper then it
# will return an error
module FormHelpers
  def method_missing(m, *args, &block)  
    altered_method = m.to_s.partition('fth_').last
    FormTagHelper.send(altered_method, *args, &block)
  end  
end
