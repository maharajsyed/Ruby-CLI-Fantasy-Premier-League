class Player < ActiveRecord::Base
    has_many :drafts, class_name: "draft", foreign_key: "reference_id"
    has_many :squads, through: :draft, source: :draft_table_foreign_key_to_squad_table
end

