class Employee < ApplicationRecord
  has_many :users, dependent: :destroy
end
