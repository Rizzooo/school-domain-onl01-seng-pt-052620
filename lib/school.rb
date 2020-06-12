class School 
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(names, grades)
    roster[grades] ||= []
    roster[grades] << names
  end
  
  def grade(student_grades)
    roster[student_grades]
  end
  
  def sort
    sorted_list = {}
    roster.each do |grades, students|
      sorted_list[grades] = students.sort
    end
    sorted_list
  end
end

  
  