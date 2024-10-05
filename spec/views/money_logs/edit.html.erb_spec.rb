require 'rails_helper'

RSpec.describe "money_logs/edit", type: :view do
  let(:money_log) {
    MoneyLog.create!(
      income: 1.5,
      expense: ""
    )
  }

  before(:each) do
    assign(:money_log, money_log)
  end

  it "renders the edit money_log form" do
    render

    assert_select "form[action=?][method=?]", money_log_path(money_log), "post" do

      assert_select "input[name=?]", "money_log[income]"

      assert_select "input[name=?]", "money_log[expense]"
    end
  end
end
