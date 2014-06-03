class RemovePostIdFromPostAttachments < ActiveRecord::Migration
  def change
	  remove_column :post_attachments, :post_id
  end
end
