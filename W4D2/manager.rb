require_relative 'employee.rb'

class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss)
        super 
        @employees = []
    end

    def add_employee(employee)
        @employees << employee
    end

    def bonus(multiplier)
        #bonus = (total salary of all sub-employees) * multiplier
        sum = 0
        (self.employees).each do |employee|
            if employee.is_a? (Manager)

            else
                sum += employee.salary
            end
        end
        sum * multiplier 
    end
end
