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