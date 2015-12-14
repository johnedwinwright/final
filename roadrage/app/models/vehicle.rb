class Vehicle < ActiveRecord::Base
  extend FriendlyId
  friendly_id :plate_number, use: [:slugged, :finders]


end
