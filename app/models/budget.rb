class Budget < ApplicationRecord
  belongs_to :account
  belongs_to :period
  belongs_to :organisation
end
