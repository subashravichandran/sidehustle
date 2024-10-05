require 'rails_helper'

RSpec.describe "money_logs/show", type: :view do
  before(:each) do
    assign(:money_log, MoneyLog.create!(
      income: 2.5,
      expense: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
  end
end
