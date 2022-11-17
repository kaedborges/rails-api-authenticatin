class CreateTudos < ActiveRecord::Migration[7.0]
  def change
    create_table :tudos do |t|
      t.string :title
      t.string :status
      t.boolean :is_completed

      t.timestamps
    end
  end
end
