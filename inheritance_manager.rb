class Employee

    attr_reader :salary

    def initialize(name, title, salary, boss=nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        if self.is_a?(Manager)
            return self.bonus_m * multiplier
        else
            return self.salary * multiplier
        end
    end

end

class Manager < Employee

    attr_accessor :employees, :boss, :salary

    def initialize(name, title, salary, boss=nil)
        super
        @employees = []
    end

    def fill_employees(employee)
        employees << employee
    end

    def bonus_m

        sum = 0
        
        employees.each do |i|
            if i.is_a?(Manager)
                sum += i.salary + i.bonus_m
            else
                sum += i.salary
            end
        end
        return sum
    end

end

ned = Manager.new("Ned", "Founder", 1000000)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)

darren.fill_employees(shawna)
darren.fill_employees(david)

ned.fill_employees(darren)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000