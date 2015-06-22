class Trip
  attr_accessor :length, :type, :location
  def initialize(length, type)
    @length = length
    @type = type
    @location = location # Add location later
  end

  def something
  end
end
