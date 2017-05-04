class Planet < ActiveRecord::Base
  belongs_to :user
  validates :name, length: { maximum: 15 }, 
                   presence: true


end
