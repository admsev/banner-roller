class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.belongs_to :banner
      t.text :data

      t.timestamps
    end
    add_index :clicks, :banner_id
  end
end
