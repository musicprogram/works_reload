class Board < ActiveRecord::Base
  belongs_to :campaign
  belongs_to :brand
  belongs_to :country
  belongs_to :activity
  
  
  before_validation :sumar
  
  def sumar
    self.sum_time  = date_time.to_f - end_time.to_f
    
    self.sum_time = sum_time * 1 / 60
	        
	  self.sum_time = sum_time * -1
  end
  
end
