require_relative '../config/environment'


interface = Interface.new()
interface.welcome


user_instance = interface.signin_or_new

unless user_instance
    user_instance = interface.signin_or_new
end



interface.user = user_instance

interface.main_menu


puts "hello world"
