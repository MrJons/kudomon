#Manages Kudomon in the wild

class Kudomon

  def initialize(population_hash = default_population)
    @population_hash = population_hash
    default_population = {"Weed-oh" => :grass, "Green-green-giant" => :grass,
                          "Is-it-hot-in-here?" => :fire, "Clamy" => :fire,
                          "Turn-off-at-mains" => :electric, "Shockywocky" => :electric,
                          "Bruce-lee" => :water, "get-me-a-towel" => :water,
                          "Dwayne" => :rock, "Rocky-balboa" => :rock,
                          "Jedi-idej" => :psychic, "Mystic-meg" => :rock}
  end

end
