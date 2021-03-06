class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.text :body
      t.integer :order
      t.references :user, index: true

      t.timestamps
    end
  end
end
