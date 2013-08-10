class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :url, null: false
      t.integer :position, null: false
      t.string :short_url

      t.timestamps
    end
  end
end
