class Interface
    attr_accessor :prompt, :user

    def initialize
        @prompt = TTY::Prompt.new
    end

    def welcome
        puts "\nWELCOME TO CLI FANTASY PREMIER LEAGUE"
    end

    def signin_or_new
    answer = prompt.select("Select one of the following option:") do |menu|
        menu.choice "Sign in", -> { User.signing_in }
        menu.choice "New user", -> { User.creating_new_user }
        menu.choice "Exit", -> { puts "Come back soon!" }
      end
    end
    
    def main_menu
        system "clear"
        puts "Welcome #{user.username}"
     prompt.select("Select one of the following option:") do |menu|
        menu.choice "Build squad", -> {self.create_squad}
        menu.choice "Update squad", -> {self.edit_squad}
        menu.choice "Display squad", -> {self.view_squad}
        menu.choice "Remove squad", -> {self.delete_squad}
        menu.choice "Exit", -> { puts "Thanks for playing CLI FANTASY PREMIER LEAGUE" }
        end
    end


    def view_squad
        system "clear"
        sleep(1)
        user.display_squad
        main_menu
    end
end