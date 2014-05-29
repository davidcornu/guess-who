class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :story, :null => false
      t.string :gender, :null => false
    end

    add_index :votes, :story_id
  end
end
