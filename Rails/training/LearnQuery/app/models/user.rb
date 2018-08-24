class User < ApplicationRecord
	belongs_to :employee
	default_scope { where ("name = 'Professor'")}
	scope :fullname, -> { where("full_name = 'Fazzu Kream'")}
	
end
