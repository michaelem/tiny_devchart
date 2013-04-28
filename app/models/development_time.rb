class DevelopmentTime < ActiveRecord::Base
  attr_accessible :developer_id, :dillution, :film_id, :iso, :notes, :rating, :seconds, :temperature
  belongs_to :film
  belongs_to :developer
end
