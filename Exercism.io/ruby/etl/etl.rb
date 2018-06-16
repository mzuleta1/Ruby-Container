module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
# ETL
class ETL
  def self.transform(old)
    old.each_with_object({}) { |(k, v), r| v.each { |x| r[x.downcase!] = k } }
  end
end
