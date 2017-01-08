# ROOM CLASS
# Attributes:
# - name
# - width
# - length
# - items (a collection of Item instances)
# Methods:
# - getters for items, name, width, length
# - setter for items, name
# - total_value (adds up prices of items)
# - to_s override

require_relative "item.rb"

class Room
  attr_reader :width, :length
  attr_accessor :items, :name

  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
    @items = []
  end

  def total_value
    total = 0
    @items.each do |item|
      total += item.price
    end
    total
  end
  
  def to_s
    "A #{@name} with the width of #{@width} and a length of #{@length}."
  end

end

# living_room = Room.new("living room", 20, 35)
# piano = Item.new("piano", "black", 10000)
# box = Item.new("cardboard box", "brown", 32)
# living_room.items << piano
# living_room.items << box
# puts living_room
# puts piano
# p living_room.total_value