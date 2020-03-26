class CreateSquads < ActiveRecord::Migration[5.2]
  def change
    create_table :squads do |t|
      t.string :squad_name
      t.integer :user_id
      t.integer :budget
    end
  end
end
