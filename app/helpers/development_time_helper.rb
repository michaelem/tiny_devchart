module DevelopmentTimeHelper
  def humanize secs
    minutes, seconds = secs.divmod(60)
    "%02d" % minutes
  end
end
