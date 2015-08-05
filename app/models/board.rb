class Board < ActiveRecord::Base
  
  validates :activity, :presence => true
	validates :brand, :presence => true
	validates :country, :presence => true
	validates :campaign, :presence => true

  
  
  
  belongs_to :campaign
  belongs_to :brand
  belongs_to :country
  belongs_to :activity
  belongs_to :user
  
  
  before_validation :sumar
  
  def sumar
    self.sum_time  = date_time.to_f - end_time.to_f
    
    self.sum_time = sum_time * 1 / 60
	        
	  self.sum_time = sum_time * -1
  end
  
  
  def self.search(search)
       
        if search   
            where(["date_time LIKE ?", "%#{search}%"])
        else
            all
        end
        
  end
  
  def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |board|
      csv << board.attributes.values_at(*column_names)
     end
    end
  end
  
  
  
end
