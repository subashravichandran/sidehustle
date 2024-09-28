require 'rails_helper'

RSpec.describe User, type: :model do
  fixtures :users, :alerts

  it 'has a valid name' do
    user = users(:ironman)
    expect(user.name).to be_present
    expect(user.dob).to be_present
    expect(user.name).to eq('Tony Stark')
    expect(user.alerts).to be_present
  end
end
