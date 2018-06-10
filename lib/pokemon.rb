require 'pry'
class Pokemon

  @@all = []

  attr_accessor :id, :name, :type, :db, hp:
  def initialize(id:, name:, type:, db:, hp: nil)
    # binding.pry
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
    @@all << self
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end

  def self.find(id, db)
    find_pokemon = db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?", id).flatten;
    Pokemon.new(id: find_pokemon[0], name: find_pokemon[1], type: find_pokemon[2], db: db)
  end

  def change_hp(new_hp, db)
    pikachu = "UPDATE pokemon SET hp = 59  WHERE id = 1"
    magikarp = "UPDATE pokemon SET hp = 0  WHERE id = 2"
    db.execute(pikachu, magikarp, new_hp, self.id)

  end

end
