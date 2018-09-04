class Mobile < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
def can_validate
    true
  end
  validates :cost, numericality: true
end