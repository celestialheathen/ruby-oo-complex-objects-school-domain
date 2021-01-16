class School 

    attr_accessor :roster 
    attr_reader :name

    def initialize(name)
        @name = name 
        @roster = {}
    end 

    def add_student(name, grade)
        if @roster[grade] == nil 
            @roster[grade] = []
            @roster[grade].push(name)
        else 
            @roster[grade].push(name)
        end 
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.collect { |key, value|
            @roster[key] = value.sort
    }
    @roster
    end

end




