class Member < ApplicationRecord
  belongs_to :organisation
  has_one :adress, as: :addressable
  has_one :bank_account, as: :bankaccountable
end
