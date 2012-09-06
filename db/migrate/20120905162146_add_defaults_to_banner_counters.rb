class AddDefaultsToBannerCounters < ActiveRecord::Migration
  def change
    change_column :banners, :clicks_count, :integer, :default => 0
    change_column :banners, :click_stock, :integer, :default => 0
    change_column :banners, :shows_count, :integer, :default => 0
    change_column :banners, :show_stock, :integer, :default => 0
  end
end
