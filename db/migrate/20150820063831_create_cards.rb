class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.text :columns

      t.timestamps null: false
    end
  end
end
