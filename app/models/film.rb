class Film < ActiveRecord::Base
  validates :name, :brand, :iso, presence: true
  validates :name, uniqueness: true

  has_many :development_times
end
