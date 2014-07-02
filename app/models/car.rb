class Car < ActiveRecord::Base
  belongs_to :manufacturer

  validates :model_name, presence: true
  validates :year, presence: true, numericality: { minimum: 1920 }
  validates :mileage, presence: true, numericality: true
  validates :color, presence: true
  validates :manufacturer_id, presence: true
end
