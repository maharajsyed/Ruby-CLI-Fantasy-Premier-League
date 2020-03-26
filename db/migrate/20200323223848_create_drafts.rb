class CreateDrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :drafts do |t|
      t.integer :player_id
      t.integer :squad_id
    end
  end
end
