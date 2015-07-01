require 'test/unit'
require_relative 'timecard'
require_relative 'employee'
require_relative 'payroll'

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