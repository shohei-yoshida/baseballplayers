class Player < ApplicationRecord
  attachment :image
  
  with_options presence: true do
    validates :team
    validates :name
    validates :number
    validates :birthday
    validates :old
    validates :place
    validates :height
    validates :weight
    validates :group
    validates :position
    validates :draht
    validates :total
    validates :career
    validates :image
  end
  
  has_many :scores
  
end

