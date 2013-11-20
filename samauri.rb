#!/usr/bin/ruby

###
#To install 'gem install shodan' for the shodan libraries
#Or gem update shodan to update the libraries
###

require 'shodan'

KEY = "" #Enter your key
api = Shodan::WebAPI.new(KEY)

class ShodanScanner(object)
    
    def initialize(KEY)
        @api = api(KEY)
    end

    def searchShodan(search_string)
        begin
            filename = 'ips.txt'

        rescue Exception => e
            puts "Error: #{e}"
        end
    end

    def searchExploitDB(search_string)
        begin

        rescue Exception => e
            puts "Error: #{e}"
        end
    end
end

if __FILE__ == $0
    while true
        puts "+----------------------+"
        puts "|     Samurai Ruby     |"
        puts "|       v 0.0.1        |"
        puts "|       solidus        |"
        puts "|       TerrorByte     |"
        puts "+----------------------+"
        puts "1. Shodan"
        puts "2. Exploit DB"
        puts "3. Google Wifi/Skyhook (unimplemented)"
        puts "99. Quit\n"
        
        scanner = ShodanScanner(KEY)

        print "[>] Enter a number: "
        user_input = STDIN.gets.chomp()

        if int(user_input) == 1
            print "[>] Enter a search string: "
            user_string = STDIN.gets.chomp()
            scanner.searchShodan(user_string)
        elsif int(user_input) == 2
            print "[>] Enter a search string: "
            user_string = STDIN.gets.chomp()
            scanner.searchExploitDB(user_string)
        elsif int(user_input) == 3
            puts "You can\'t read, pick another number!"
        elsif int(user_input) == 99
            puts "Goodbye, Samurai"
            exit(0) 
        else
            puts "You can't read"
        end
    end
end
