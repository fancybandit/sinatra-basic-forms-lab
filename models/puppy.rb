
class Puppy
    attr_accessor :name, :age
    attr_reader :breed

    def initialize(stats)
        stats.each do |key, value|
            if (key == :breed) || (key == "breed")
                @breed = value
            else
                self.send(("#{key}="), value)
            end
        end
    end

end

