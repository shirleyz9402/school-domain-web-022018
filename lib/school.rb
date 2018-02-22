require'pry'

class School
attr_reader :name, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end
  def add_student(name, grade)
    if @roster.include?(grade) == false
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end
  def grade(grade)
    @roster[grade]
  end

  def sort
  sorted = {}
  @roster.each do |grade, students|
    if sorted.include?(grade) == false
      sorted[grade] = [students.sort!]
    end
  end

end
end
# binding.pry
