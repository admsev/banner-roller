class AddCountersToBanner < ActiveRecord::Migration
  def change
    add_column :banners, :clicks_count, :integer
    add_column :banners, :shows_count, :integer
  end
end
