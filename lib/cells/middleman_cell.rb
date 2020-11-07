# frozen_string_literal: true

require 'action_view'

# MiddlemanCell class
# Hook into Middleman helpers here https://github.com/middleman/middleman/blob/61915cdaab387cfedd92bf25f35e2eb69ecd8f87/middleman-core/lib/middleman-core/core_extensions/default_helpers.rb
# Inspiration from here https://github.com/bhollis/middleman/blob/7be0590acf3662127ee020e96ffcefa15185339e/middleman-core/lib/middleman-core/renderers/redcarpet.rb
class MiddlemanCell < Cell::ViewModel
  include ::Cell::Slim
  include ActionView::Helpers::TagHelper

  attr_accessor :output_buffer

  self.view_paths = %w[lib/cells].freeze

  def link_to(...)
    model.link_to(...)
  end

  def image_tag(...)
    model.image_tag(...)
  end
end
