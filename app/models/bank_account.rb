class BankAccount < ApplicationRecord
    belongs_to :bankaccountable, polymorphic: true
end
