class Developer < ActiveRecord::Base
  #attr_accessible :brand, :name
  has_many :development_times
end
