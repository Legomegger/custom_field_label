# frozen_string_literal: true
module RedmineCustomFieldLabel
  module Patches
    module CustomFieldsHelperPatch
      def custom_field_name_tag_bold(custom_field)
        title = custom_field.description.presence
        css = title ? "field-description" : nil
        content_tag 'span', "<b>#{custom_field.name}</b>".html_safe, :title => title, :class => css
      end
    end
  end
end

ActionView::Base.send :include, RedmineCustomFieldLabel::Patches::CustomFieldsHelperPatch
