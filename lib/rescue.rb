class Rescue 

attr_accessor :name, :url 

@@all = []

def initialize(name, url)
    @name = name
    @url = url
    self.save
end 

def save
    @@all << self
end 

def self.all
    @@all
end 

def self.find_rescue(name)
    self.all.find{|x| x.name == name}
end

def self.find_all
    self.all.map{|i| i.name }
end 


end 









