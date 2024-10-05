class MoneyLog < ApplicationRecord
  validates :income, presence: true
end
