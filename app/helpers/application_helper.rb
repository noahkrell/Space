module ApplicationHelper

  def to_central(date)
    date.in_time_zone('US/Central')
  end

end
