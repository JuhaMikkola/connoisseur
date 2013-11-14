module ApplicationHelper

  def format_price(price_in_cents)
    price_in_dollars = price_in_cents.to_f / 100
    sprintf("%.2f", price_in_dollars)
  end

  def convert_time(time_in_weird_format)
    hour = time_in_weird_format / 60
    mins = time_in_weird_format % 60
    return "#{hour}:0#{mins}"
  end

end
