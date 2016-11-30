class School

  def initialize(school_name)
    @school_name = school_name
    @roster_hash = {}
  end

  def roster
    @roster_hash
  end


  def add_student(student_name, student_grade)
    if @roster_hash.has_key?(student_grade)
      @roster_hash[student_grade] << student_name
    else
      @roster_hash[student_grade] = []
      @roster_hash[student_grade] << student_name
    end
  end

  def grade(student_grade)
    @roster_hash[student_grade]
  end

  def sort
    @roster_hash.each do |grade_num, name_array|
      name_array.sort!
    end
  end

end

school = School.new("Bayside High School")