class Draft < ActiveRecord::Base
    belongs_to :player, class_name: "player", foreign_key: "player_id"
    belongs_to :squad, class_name: "squad", foreign_key: "squad_id"
end
