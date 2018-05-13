# Pangram Class
class Pangram
  def self.pangram?(phrase)
    ('a'..'z').all? { |x| phrase.downcase.include? x } ? true : false
  end
end
