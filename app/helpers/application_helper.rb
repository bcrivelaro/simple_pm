module ApplicationHelper
  def alert_for(type)
    case type.to_sym
    when :notice
      'success'
    when :error
      'danger'
    else
      'primary'
    end
  end
end
