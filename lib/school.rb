require 'pry'
class School

    attr_reader :name
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster.keys.include?(grade)
            @roster[grade] << student 
        else
            @roster[grade] = []
            @roster[grade] << student
        end    
        @roster
    end

    def grade(number)
        @roster[number]
    end

    def sort
        @roster.map {|key, value| @roster[key] = value.sort}
        @roster.sort.to_h
    end
end