# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Knight::Application.initialize!

# Modify Form Builder's Field With Errors Mapping
#  via http://stackoverflow.com/questions/8713479/custom-html-error-wrappers-for-form-elements
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  if instance.error_message.kind_of?(Array)
    %(#{html_tag}).html_safe
  else
    %(#{html_tag}).html_safe
  end
end