module RedmineCustomFieldLabel
  module Patches
    module LabelFormatPatch
      Object.const_get('Redmine::FieldFormat').const_set(
        'LabelFormat',
        Class.new(Redmine::FieldFormat::Base) do
          Redmine::FieldFormat::Base.send(:add, 'label')
          Redmine::FieldFormat::Base::searchable_supported = true
          Redmine::FieldFormat::Base::change_no_details = true
          Redmine::FieldFormat::Base::bulk_edit_supported = false
          Redmine::FieldFormat::Base::field_attributes(:issue_label)
        end
      )
    end
  end
end
Redmine::FieldFormat::Base.send(:extend, RedmineCustomFieldLabel::Patches::LabelFormatPatch)
