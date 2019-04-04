class School# code here!
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
  sorted = {}
  roster.each do |grade, students|
    sorted[grade] = students.sort
  end
  sorted
end
end

 #
 # If the roster already has a key of grade 9, we'll be able to push AC Slater into the array that the grade 9 key points to.
 #
 # Otherwise, we'll need to first create the key of grade 9 and point it to an empty array.
 #
 # However, if we're in the scenario in which the grade 9 key already exists, we will erase its current contents by creating a key of 9 and setting it equal to an empty array!
