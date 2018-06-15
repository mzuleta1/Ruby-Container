module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
# Phone
class PhoneNumber
  def self.clean(cell)
    cell.gsub!(/[^\d]/, '')
    cell[0] = '' if cell.start_with?('1')
    return nil unless cell[3].to_i.between?(2, 9)
    return nil if cell.length < 10 || cell.length > 10
    cell
  end
end
