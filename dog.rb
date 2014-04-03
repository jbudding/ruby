Robo = Struct.new(:one, :two) do

    def report

        puts "#{one} " + "#{two} "

    end

end

barney = Robo.new('bar','foo')
barney.report
