class Event < ActiveRecord::Base
  attr_accessible :address_line_1, :address_line_2, :city, :latitude, :longitude, :title, :when
end