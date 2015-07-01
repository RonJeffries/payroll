class Employee
    attr_reader :base_rate, :time_card
    def initialize(base_rate, time_card)
        @base_rate = base_rate
        @time_card = time_card
    end
end