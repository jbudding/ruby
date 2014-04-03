class StoryTeller
    def initialize(title)
        @title = title

        welcome = <<-MESSAGE
        ---------------------------------------
            would you like to read about #{@title}?
        ---------------------------------------
            [Y] / [N]
        MESSAGE

        puts welcome
        proceed?
    end

    def proceed?
        inp = gets

        if inp == "Y"
            puts "YAY!!!"
        elsif inp == "N"
            puts "NOOOO!!!"
        else
            puts "please enter a valid option:\t[Y] / [N]"
        end
    end
end

s = StoryTeller.new("Bailey's run")
