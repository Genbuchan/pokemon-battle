class Pokemon
  attr_accessor :name
  attr_accessor :hp
  
  def initialize(name:, hp:)
    self.name = name
    self.hp = hp
  end
end