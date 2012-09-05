class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.belongs_to :banner
      t.text :data

      t.timestamps
    end
    add_index :shows, :banner_id
  end
end
