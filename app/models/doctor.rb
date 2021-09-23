class Doctor < ApplicationRecord
  belongs_to :specialty

  validates :name, presence: true
  validates :email, presence: true
  validates :crm, presence: true, numericality: { only_integer: true }, uniqueness: true 
end
