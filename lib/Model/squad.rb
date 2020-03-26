class Squad < ActiveRecord::Base
    belongs_to :user, class_name: "user", foreign_key: "user_id"

    has_many :drafts, class_name: "draft", foreign_key: "reference_id"
    has_many :players, through: :drafts, source: :drafts_table_foreign_key_to_players_table
end

#Method to Display my Squad::
def display_squad
    player_names = self.players.map do |player|
        player.player_name
    end
    if player_name.length > 0
        TTY::Prompt.new.select("#{user.team_name} line up:", player_names)
    else
        puts "please complete your squad!"
    end
end

def build_squad
end

def update_squad
end

def remove_squad
end

