# Gigasecond Class
class Gigasecond
  def self.from(date)
    time = date + 10**9
    Time.at(time).utc
  end
end
