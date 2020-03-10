Redmine::Plugin.register :redmine_custom_field_label do
  name 'Redmine Custom Field Label plugin'
  author 'Askarov Alikhan'
  description 'This is a plugin for Redmine which adds Label type to Custom Fields'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  # include patch to kernel
  require_dependency 'redmine_custom_field_label/patches/label_format_patch'
  require_dependency 'redmine_custom_field_label/patches/custom_fields_helper_patch'
  require_dependency 'redmine_custom_field_label/patches/issues_helper_patch'
  # end of include
end
