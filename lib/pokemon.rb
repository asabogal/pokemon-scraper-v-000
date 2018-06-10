require 'pry'
class Pokemon

  @@all = []

  attr_accessor :id, :name, :type, :db
  def initialize(name = "david", type = "coach", db = {})
    # binding.pry
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(id, db)
    
  end

end
