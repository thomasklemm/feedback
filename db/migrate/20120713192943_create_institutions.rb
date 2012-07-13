class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :slug
      t.string :full_name
      t.text :description

      t.timestamps
    end
    add_index :institutions, :slug, unique: true
  end
end
