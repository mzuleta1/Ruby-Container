module BookKeeping
  VERSION = 2
end
# Bob
class Bob
  def self.hey(str)
    phr = str.strip
    sg = phr[-1]
    return "Calm down, I know what I'm doing!" if (sg == '?') && upper?(phr)
    return 'Sure.' if sg == '?'
    return 'Whoa, chill out!' if upper?(phr)
    return 'Fine. Be that way!' if phr.empty?
    'Whatever.'
  end

  class << self
    private def upper?(phr)
      phr == phr.upcase && phr.match(/[a-z]/i)
    end
  end
end
