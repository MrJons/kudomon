#manages map details/positioning
require_relative 'kudomon'

class Map

  def initialize(map_width = 10, map_height = 10)
    @map_width  = map_width
    @map_height = map_height
    @player_location = {"height": nil, "width": nil}
    new_map
  end

  attr_reader :land, :player_location

  private

  def new_map
    generate_map(@map_height, @map_width)
    player_start_position
    kudomon_start_positions
  end

  def generate_map(height, width)
    @land = Array.new(height, Array.new(width))
  end

  def player_start_position
    random_positioning
    player_location["height"] = @random_pick["r_height"]
    player_location["width"] = @random_pick["r_width"]
  end

  def kudomon_start_positions
    Kudomon.population.each do |species, type|
      pos_h = nil
      pos_w = nil
      until land[pos_h][pos_w] == nil
        random_positioning
        pos_h = @random_pick["r_height"]
        pos_w = @random_pick["r_width"]
      end
      land[pos_h][pos_w] = species
    end
  end

  def random_positioning
    height_place = rand(1..@map_height)
    width_place = rand(1..@map_width)
    @random_pick = {"r_height": height_place, "r_width": width_place}
  end


end
