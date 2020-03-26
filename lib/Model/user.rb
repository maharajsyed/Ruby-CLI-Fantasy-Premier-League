class User < ActiveRecord::Base

    has_many :squads, class_name: "squad", foreign_key: "reference_id"
    
#Method to sign into the application
    def self.signing_in
            prompt = TTY::Prompt.new
            username = prompt.ask("Please enter your username:")
            password = prompt.ask("Please enter your password:")
            find_user = User.find_by(username: username, password: password)
        if find_user
            return find_user
        else
            puts "Unidentified user!"
        end
    end


#Method to create new user
    def self.creating_new_user
            prompt = TTY::Prompt.new
            username = prompt.ask("Create a username:")
            password = prompt.ask("Create a password:")
        if User.find_by(username: username)
            puts "Please select another username"
        else
            User.create(username: username, password: password)
        end
    end


#Method to display squad
    def display_squad
            squad_name = self.squad.map do |squad_instance|
            {squad_instance.name => squad_instance.id}
        end
        if squad_name.length > 0
            squad_id = TTY::Prompt.new.selelct(squad_name)
            find_squad = Squad.find(squad_id)
            find_squad.display_players
        else
                puts "No squad available, please build your squad first"
        end
    end
end