class Telephone < ApplicationRecord
  belongs_to :patient

  enum kind: [ :home, :mobile, :commercial ]

  validates :number, presence: true
  validates :number, presence: true
end
