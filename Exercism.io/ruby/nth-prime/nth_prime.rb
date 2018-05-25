module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
# Prime
class Prime
  def self.nth(num)
    es_primo = true
    cant_mostrados = 1
    n = 3
      while(cant_mostrados < num)
        a = (2..(n + 2)).to_a
        a.each do |x|
          es_primo = false if  n % x == 0
        end
        if es_primo
          cant_mostrados+=1
          print cant_mostrados.to_s +": "+n.to_s
        end
        n+=2
      end
  end
end
Prime.nth(10)