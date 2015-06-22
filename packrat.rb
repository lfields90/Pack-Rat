require_relative 'clothing.rb'
require_relative 'trip.rb'
require 'pry'

CLOTHES = { shirts: 1, pants: 1, socks: 1, shoes: 1 }
ACCESSORIES = [:glasses, :belt, :jewlery, :hats, :gloves, :jackets, :coat]

class Packing
  attr_accessor :trip
  def initialize
    @trip = Trip.new(3, 'vacation')
  end

  def daily_outfit
    CLOTHES
  end

  def outfits_needed
    daily_outfit.each do |item, number|
      daily_outfit[item] *= @trip.length
    end
  end

end
puts Packing.new.outfits_needed
