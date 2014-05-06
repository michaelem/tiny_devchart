module DevelopmentTimeHelper
  def humanize secs
    minutes, seconds = secs.divmod(60)
    "#{minutes}:#{seconds.to_s.rjust(2, '0')}"
  end
end
