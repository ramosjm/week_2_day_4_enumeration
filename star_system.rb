class StarSystem
  attr_reader :name, :planets

  def initialize(name,planets)
    @name = name
    @planets = planets
  end

  def planet_names
     return @planets.map {|planet| planet.name}
  end

end
