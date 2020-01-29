require "jekyll/plannertags/version"

module Jekyll
  class PlannerTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      #Split by space
      tags = @text.split(' ')
      result = "tags: "
      tags.each do |tag|
        result = "#{result} <a href=\"/ref/planners/tags/#{tag}\">#{tag}</a>"
      end
      result
    end
  end
end

Liquid::Template.register_tag('planner_tag', Jekyll::PlannerTag)