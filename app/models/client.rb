class Client < ApplicationRecord
  has_many :appointments
  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments
  def c_name
    "#{self.first_name}"
  end

end
