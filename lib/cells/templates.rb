# frozen_string_literal: true

# Cell::Templates class
module Cell
  class Templates
    # Had to alter this from the cells codebase due to Middleman requiring an additional argument as seen
    # in the SlimTemplatePatch at middleman/middleman-core/lib/middleman-core/renderers/slim.rb 
    def find_template(prefixes, view, options) # options is not considered in cache key.
      cache.fetch(prefixes, view) do
        template_prefix = prefixes.find { |prefix| File.exist?("#{prefix}/#{view}") }
        return if template_prefix.nil? # We can safely return early. Tilt::Cache does not cache nils.
        template_class = options.delete(:template_class)
        template_class.new("#{template_prefix}/#{view}", nil, options) # Tilt.new()
      end
    end
  end
end
