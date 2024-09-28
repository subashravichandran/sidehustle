require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { User.create(name: 'Tony Stark', dob: '1990-05-21') }
  let!(:alert) { Alert.create(user: user, content: 'Happy Birthday', trigger_at: '1990-05-21 09:00:00') }

  context 'Model: has valid' do
    it 'user record' do
      expect(user.name).to be_present
      expect(user.dob).to be_present
      expect(user.name).to eq('Tony Stark')
    end

    it 'alert record for user' do
      expect(user.alerts).to be_present
      expect(user.alerts.id).to eq(5)
    end
  end
end
