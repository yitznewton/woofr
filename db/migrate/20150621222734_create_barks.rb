class CreateBarks < ActiveRecord::Migration
  def change
    create_table :barks do |t|
      t.string :body
      t.belongs_to :user, index: true
      t.datetime :barked_at

      t.timestamps null: false
    end
  end
end
