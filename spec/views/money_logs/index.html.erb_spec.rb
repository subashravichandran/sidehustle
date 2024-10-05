require 'rails_helper'

RSpec.describe "money_logs/index", type: :view do
  before(:each) do
    assign(:money_logs, [
      MoneyLog.create!(
        income: 2.5,
        expense: ""
      ),
      MoneyLog.create!(
        income: 2.5,
        expense: ""
      )
    ])
  end

  it "renders a list of money_logs" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("".to_s), count: 2
  end
end
