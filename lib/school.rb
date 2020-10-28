# code here!

class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        @student_name = student_name
        @grade = grade
        roster[@grade] ||= []
        roster[@grade] << @student_name
    end

    def grade(grade)
        @grade = grade
        roster[grade]
    end

    def sort
        @roster.each do |grade, students|
          @roster[grade] = students.sort
        end
      end

end

#school.roster
