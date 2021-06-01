require_relative 'employee.rb'

class Manager < Employee
    attr_reader :employees
    def initialize
        super
        @employees=[]
    end

    def bonus(multiplier)
        
    end
end