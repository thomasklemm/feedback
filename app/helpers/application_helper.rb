module ApplicationHelper

  # Flash Messages Container Classes
  def flash_message_container(type)
    klass = 'alert-box'
    klass = 'alert-box'         if type == :notice
    klass = 'alert-box success' if type == :success
    klass = 'alert-box'         if type == :alert
    klass = 'alert-box alert'   if type == :error
    klass
  end

  def error_class(obj, attribute)
    obj.errors[attribute].present? ? 'error': ''
  end

  def error_field(obj, attribute)
    obj.errors[attribute].present? ? "<small>#{ obj.errors.full_messages.join(', ') }</small>".html_safe : ""
  end

end
