class Zoo
    attr_reader :name, :location
    @@all =[]
    def initialize(name,location)
        @name=name
        @location=location
        @@all << self
    end
    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end
    def animal_species
        species= animals.map do |animal|
            animal.species
        end
        species.uniq!
    end
    def find_by_species(species)
        animals.select do |animal|
            animal.species==species
        end
    end
    def animal_nicknames
        animals.map do |animal|
            animal.nickname
        end 
    end
    def self.find_by_location(location)
        all.select do |zoo|
            zoo.location == location
        end
    end
    def self.all
        @@all
    end
end
