require 'map'

describe Map do

  subject(:map) {described_class.new}

    it "builds world map according to specified dimensions" do
      world = Map.new(3,3)
      expect(world.land).to eq([[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]])
    end

end
