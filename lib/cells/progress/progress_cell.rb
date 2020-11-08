# frozen_string_literal: true

require 'lib/cells/middleman_cell'

# ProgressCell class
class ProgressCell < MiddlemanCell
  def progress_arrow
    content_tag(:div, class: "progress-bar") do
      content_tag(:div, nil, class: "progress-bar-filled", style: "width: #{options[:filled]}%")
    end
  end

  def progress_percent
    content_tag(:div, class: "progress-bar progress-bar-show-percent") do
      content_tag(:div, nil, class: "progress-bar-filled", style: "width: #{options[:filled]}%", "data-filled": "#{options[:text]}")
    end
  end

  def progress_no_arrow
    content_tag(:div, class: "progress-bar progress-bar-no-arrow") do
      content_tag(:div, nil, class: "progress-bar-filled", style: "width: #{options[:filled]}%")
    end
  end
end
