class Dog
    attr_accessor :name
    @@all = []

    def save
        @@all << self
    end

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def self.print_all
        self.all.each do |dog| 
        puts dog.name
        end
    end

    def self.clear_all
        self.all.clear
    end
    
end