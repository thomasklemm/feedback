class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name
      t.string :full_name
      t.string :slug
      t.text :description
      t.references :institution

      t.timestamps
    end
    add_index :channels, :slug
    add_index :channels, :institution_id
  end
end
