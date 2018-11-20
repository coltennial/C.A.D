class Doctor < ApplicationRecord
  has_many :appointments
  has_many :appointments, dependent: :destroy
  has_many :clients, through: :appointments

end
