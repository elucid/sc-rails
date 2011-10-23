require 'sprockets/engines'
require 'tilt'
require 'action_view'
require 'action_view/helpers'

module Sprockets
  class HandlebarsProcessor < Tilt::Template
    include ActionView::Helpers::JavaScriptHelper

    def self.default_mime_type
      'application/javascript'
    end

    def prepare
    end

    def evaluate(scope, locals, &block)
      name = scope.logical_path.downcase.gsub(/[^a-z0-9]/, '_')
      template = escape_javascript data
      <<-TMPL
SC.TEMPLATES["#{name}"] = Handlebars.compile("#{template}");
TMPL
    end
  end

  register_engine '.hjs', HandlebarsProcessor
end
