class AddAttachmentPhotoToRequests < ActiveRecord::Migration
  def self.up
    change_table :requests do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :requests, :photo
  end
end
