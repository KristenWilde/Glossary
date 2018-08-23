class CreateJoinTableTopicEntry < ActiveRecord::Migration[5.1]
  def change
    create_join_table :topics, :entries
  end
end
