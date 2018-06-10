class Pokemon

  @@all = []

  # attr_accessor :name, :type, :db

  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
    @all << self
  end

end
