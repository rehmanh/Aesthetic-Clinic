module ApplicationHelper

  def format_time(time)
    time.strftime("%I:%M %p")
  end

  def format_date(date)
    date.strftime("%A, %B %d %G")
  end

  def flash_class level
    case level
    when 'notice' then "alert alert-info custom-alert alert-dismissable"
    when 'success' then "alert alert-success custom-alert alert-dismissable"
    when 'error' then "alert alert-danger custom-alert alert-dismissable"
    when 'alert' then "alert alert-danger custom-alert alert-dismissable"
    end
  end

end
