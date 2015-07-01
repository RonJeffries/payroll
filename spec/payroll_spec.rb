require 'rspec'
require_relative '../timecard'

describe 'hookup' do
  it "should return 4" do
    expect(2+2).to be(4)
  end

  it 'should let me create a timecard' do
    timecard = Timecard.new(31)
    expect(timecard.regular_hours).to be(31)
  end
end