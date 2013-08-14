class Film < ActiveRecord::Base
  #attr_accessible :brand, :iso, :name
  has_many :development_times
end
