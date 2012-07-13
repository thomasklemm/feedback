class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :message
      t.references :channel

      t.timestamps
    end
    add_index :messages, :channel_id
  end
end
