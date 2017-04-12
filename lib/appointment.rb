require 'geocoder'
# Understands somewhere I need to be at a particular time
class Appointment
  attr_reader :time, :title, :location, :geocoder

  def initialize(time, title, location, geocoder = Geocoder)
    @time = time
    @title = title
    @location = location
    @geocoder = geocoder
  end

  def pretty_location
    geo_location.formatted_address
  end

  private
  attr_reader :location, :geocoder

  def geo_location
    geocoder.search(location)[0]
  end
end

p @geocoder
