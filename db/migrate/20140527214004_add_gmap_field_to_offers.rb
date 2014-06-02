class AddGmapFieldToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :gmap, :boolean
  end
end
