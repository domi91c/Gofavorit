class AddLocationIdToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :location_id, :integer
    add_index :offers, :location_id

  end
end
