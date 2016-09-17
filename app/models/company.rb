class Company < ApplicationRecord
  has_many :payments, dependent: :destroy, inverse_of: :company
  accepts_nested_attributes_for :payments, allow_destroy: true,
                                reject_if: ->(attrs) { attrs['name'].blank? || attrs['amount'].blank? }
  validates :name,  :presence=> true
end
