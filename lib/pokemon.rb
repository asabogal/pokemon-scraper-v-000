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
    find_pokemon = db.execute("SELECT * FROM pokemon WHERE id=?, id")
    Pokemon.new(id: find_pokemon_info[0], name: find_pokemon_info[1], type: find_pokemon_info[2], hp: find_pokemon_info[3], db: db)
  end

end
