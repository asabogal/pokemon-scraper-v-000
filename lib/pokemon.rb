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
    find_pokemon = db.execute("SELECT * FROM pokemon WHERE id=?, id").flatten
    Pokemon.new(id: find_pokemon[0], name: find_pokemon[1], type: find_pokemon[2], db: db)
  end

end
