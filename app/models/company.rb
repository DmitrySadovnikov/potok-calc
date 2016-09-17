class Company < ApplicationRecord
  has_many :payments
  accepts_nested_attributes_for :payments, allow_destroy: true
end
