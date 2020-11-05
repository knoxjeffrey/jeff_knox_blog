# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# AlertCell class
class AlertCell < MiddlemanCell
  def alert
    build_alert_class(**alert_args)
    content_tag(:div, options[:text], options[:html])
  end

  private

  def build_alert_class(alert_type:)
    additional_classes = options.dig(:html, :class) ? " #{options[:html][:class]}" : ''
    combined_class = "#{alert_type(alert_type)}#{additional_classes}"
    options[:html] ||= {}
    options[:html][:class] = combined_class
  end

  def alert_args
    { alert_type: options[:type] }
  end

  def alert_type(type)
    case type
    when :default
      'terminal-alert'
    when :primary
      'terminal-alert terminal-alert-primary'
    when :error
      'terminal-alert terminal-alert-error'
    end
  end
end
