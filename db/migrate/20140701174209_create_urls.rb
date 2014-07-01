class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :original
      t.string :converted
      t.integer :count

      t.timestamps
    end
  end
end
