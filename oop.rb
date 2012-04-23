
class Newclass
    def initialize(total)
        @total = total
    end
    def add(value)
        @total += value
    end
    def set(value)
        @total = value
    end
    def get
        return @total
    end
    def hastotal
        return @total != nil
    end

    def otherval
        return @otherval
    end
    def otherval=(arg)
        @otherval=arg
    end

    attr_reader :anotherval, :anothervaltoo
    attr_writer :anotherval, :anothervaltoo

end

begin
    class1 = Newclass.new(0)
    #print class1.class
    class1.set(17)
    class1.add(7)
    print class1.get
    print class1.hastotal

    class1.otherval = 17
    print class1.otherval

    class1.anotherval = 25
    class1.anothervaltoo = 24
    print class1.anotherval, class1.anothervaltoo
end

