class Employee < ApplicationRecord
  has_many :users, dependent: :destroy
  def type_name
  	"I am a #{super}"
  end
end
