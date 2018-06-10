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

  def save
  end

end
