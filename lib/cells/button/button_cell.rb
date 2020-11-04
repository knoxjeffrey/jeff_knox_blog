# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# ButtonCell class
class ButtonCell < MiddlemanCell
  def button
    build_button_class(**button_args)
    content_tag(:button, options[:text], options[:html])
  end

  def group(&block)
    content_tag(:div, class: 'btn-group') do
      block.call.html_safe
    end
  end

  private

  def build_button_class(button_type:, ghost:, block:)
    additional_classes = options.dig(:html, :class) ? " #{options[:html][:class]}" : ''
    combined_class = "#{button_type(button_type)}#{ghost?(ghost)}#{block?(block)}#{additional_classes}"
    options[:html] ||= {}
    options[:html][:class] = combined_class
  end

  def button_args
    { button_type: options[:type], ghost: options[:ghost], block: options[:block] }
  end

  def button_type(type)
    case type
    when :default
      'btn btn-default'
    when :primary
      'btn btn-primary'
    when :error
      'btn btn-error'
    end
  end

  def ghost?(btn_ghost)
    btn_ghost ? ' btn-ghost' : ''
  end

  def block?(btn_block)
    btn_block ? ' btn-block' : ''
  end
end
