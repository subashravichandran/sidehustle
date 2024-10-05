require 'rails_helper'

RSpec.describe "money_logs/new", type: :view do
  before(:each) do
    assign(:money_log, MoneyLog.new(
      income: 1.5,
      expense: ""
    ))
  end

  it "renders new money_log form" do
    render

    assert_select "form[action=?][method=?]", money_logs_path, "post" do

      assert_select "input[name=?]", "money_log[income]"

      assert_select "input[name=?]", "money_log[expense]"
    end
  end
end
