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
  
  def self.search(search)
      if search
        Player.where(['name LIKE ? OR team LIKE ? OR career LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
      else
        Player.all
      end
  end
  
end

