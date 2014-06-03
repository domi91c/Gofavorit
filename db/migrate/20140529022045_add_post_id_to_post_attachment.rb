class AddPostIdToPostAttachment < ActiveRecord::Migration
  def change
    add_column :post_attachments, :post_id, :integer
  end
end
