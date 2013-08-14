class DevelopmentTime < ActiveRecord::Base
  #attr_accessible :developer_id, :dillution, :film_id, :iso, :notes, :rating, :seconds, :temperature
  belongs_to :film
  belongs_to :developer


  after_initialize :set_defaults

  def set_defaults
    self.rating = 3
    self.iso = 100
    self.temperature = 20
  end
end
