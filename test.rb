require "test/unit"

class TC_MyTest < Test::Unit::TestCase
    def test_fail
        assert(false==false, 'Assertion was false')
    end
    def test_mustfail
        assert_equal(true, false, 'Assertion should be False')
    end
end
