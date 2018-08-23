class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :term
      t.text :definition
      t.string :link

      t.timestamps
    end
  end
end
