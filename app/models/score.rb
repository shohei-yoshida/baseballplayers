class Score < ApplicationRecord
    
    with_options presence: true do
    validates :season
    validates :hits
    validates :double
    validates :triple
    validates :home_run
    validates :avarage
    validates :points
    validates :win
    validates :lose
    validates :hold
    validates :close
  end
  
  belongs_to :player
end
