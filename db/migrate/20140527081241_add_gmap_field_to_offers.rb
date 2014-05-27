class AddGmapFieldToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :gmaps, :boolean
  end
end
