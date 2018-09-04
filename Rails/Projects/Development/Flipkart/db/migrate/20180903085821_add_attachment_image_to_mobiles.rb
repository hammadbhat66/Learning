class AddAttachmentImageToMobiles < ActiveRecord::Migration[5.2]
  def self.up
    change_table :mobiles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :mobiles, :image
  end
end
