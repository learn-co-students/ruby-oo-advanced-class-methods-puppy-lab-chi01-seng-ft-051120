class Dog
    attr_reader :name
@@all = []
def initialize(name)
    @name = name 
    save
end

def self.all
    @@all
end

def self.print_all
    names = self.all.map{|name| name.name}
    puts names
end

def save
    self.class.all << self
end

def self.clear_all
    self.all.clear
end

end