require 'test/unit'

class PayrollTest < Test::Unit::TestCase
    def test_base_pay
        regular_hours = 40
        time_card = Timecard.new(regular_hours)
        base_rate = 10
        employee = Employee.new(base_rate, time_card)
        payroll = Payroll.new(employee)
        base_pay = payroll.base_pay
        assert_equal(400, base_pay)
    end
end

class Employee
    attr_reader :base_rate, :time_card
    def initialize(base_rate, time_card)
        @base_rate = base_rate
        @time_card = time_card
    end
end

class Timecard
    attr_reader :regular_hours
    def initialize(regular_hours)
        @regular_hours = regular_hours
    end
end

class Payroll
  def initialize(employee)
    @employee = employee
  end

  def base_pay
    time_card = @employee.time_card
    regular_hours = time_card.regular_hours
    rate = @employee.base_rate
    regular_hours * rate
  end
end