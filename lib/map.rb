#manages map details/positioning

class Map

  def initialize(map_width = 10, map_height = 10)
    @map_width  = map_width
    @map_height = map_height
    generate_map(@map_width, @map_height)
  end

  attr_reader :land

  def generate_map(width, height)
    @land = Array.new(width, Array.new(height))
  end


end
