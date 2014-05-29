class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :body, :null => false
      t.integer :age, :null => false
      t.string :gender, :null => false
      t.timestamps
    end
  end
end
