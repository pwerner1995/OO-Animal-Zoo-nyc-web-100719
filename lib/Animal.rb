class Animal
    attr_reader :species, :nickname,:zoo
    attr_accessor :weight
    @@all =[]
    def initialize(species,weight,nickname,zoo)
        @species=species
        @weight=weight
        @nickname=nickname
        @zoo=zoo
        @@all << self
    end
    def self.find_by_species(species)
        all.select do |animal|
            animal.species==species
        end
    end
    def self.all
        @@all
    end
end
