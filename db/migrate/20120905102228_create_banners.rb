class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.belongs_to :site
      t.string :image
      t.string :url

      t.timestamps
    end
    add_index :banners, :site_id
  end
end
