class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.text :description
      t.string :link
      t.string :logo

      t.timestamps
    end
  end
end
