class StarSystem
  attr_reader :name, :planets

  def initialize(name,planets)
    @name = name
    @planets = planets
  end

  def planet_names
     return @planets.map {|planet| planet.name}
  end

  def get_planet_by_name(name)
  return @planets.find { |planet| name == planet.name}
  end

  def get_largest_planet
    diameter_array = @planets.map { |planet| planet.diameter}
    diameter_array.max()
    return @planets.find {|planet| diameter_array.max == planet.diameter}
  end


end
