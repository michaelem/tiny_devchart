class Developer < ActiveRecord::Base
  validates :name, :brand, presence: true
  validates :name, uniqueness: true

  has_many :development_times
end
