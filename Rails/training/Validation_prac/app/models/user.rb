class User < ApplicationRecord
	
	validates :name, presence: true, length: {minimum: 3, maximum: 15},exclusion: { in: %w(admin superuser)}
	validates :age, numericality: true, length: {maximum: 3}
	validates :email, presence: true,uniqueness: true, format: { with:/\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
	validates_confirmation_of :password, if: :password_changed?
	validates_acceptance_of :terms, :on => :create, :allow_nil => false
end
