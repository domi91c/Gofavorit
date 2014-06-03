class AddRequestIdToPostAttachment < ActiveRecord::Migration
  def change
    add_column :post_attachments, :request_id, :integer
    add_index :post_attachments, :request_id

  end
end
