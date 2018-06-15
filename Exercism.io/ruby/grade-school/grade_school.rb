module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
# Grade
class School
  def initialize
    @arr = {}
  end

  def add(name, curse)
    @arr[name] = curse
  end

  def students(num)
    @arr.select { |_name, grade| grade == num }.keys.sort
  end

  def students_by_grade
    @arr.values.uniq.sort.each_with_object([]) do |grade, arr|
      arr << { grade: grade, students: students(grade) }
    end
  end
end
