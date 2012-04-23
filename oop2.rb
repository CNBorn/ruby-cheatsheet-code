class Person
    def initialize(name, age)
        @name = name
        @age = age
    end
    attr_reader :name, :age
    attr_writer :name, :age
end

class Employee < Person
    def initialize(name, age, empno)
        super(name, age)
        @empno = empno
    end
    attr_reader :empno
    attr_writer :empno

    def add(obj)
        if obj.class == Employee
            return Employee.new(@name + obj.name + "as a group", (@age + obj.age)/2, @empno + "," + obj.empno)
        end
    end
    def +(obj)
        self.add(obj)
    end

end

begin
    susan = Employee.new("Susan", 20, "10010")
    print susan.name
    print susan.age
    print susan.empno

    phillip = Employee.new("Phillip", 26, "5637")
    group1 = susan + phillip
    print group1.name, group1.age, group1.empno
end

