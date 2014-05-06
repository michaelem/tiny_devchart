class DevelopmentTime < ActiveRecord::Base
  belongs_to :film
  belongs_to :developer

  validates :seconds, :dillution, presence: true

  after_initialize :set_defaults

  def set_defaults
    self.rating ||= 3
    self.iso ||= 100
    self.temperature ||= 20
  end
end
