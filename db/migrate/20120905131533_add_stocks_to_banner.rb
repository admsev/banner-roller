class AddStocksToBanner < ActiveRecord::Migration
  def change
    add_column :banners, :show_stock, :integer
    add_column :banners, :click_stock, :integer
  end
end
