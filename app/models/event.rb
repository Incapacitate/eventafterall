class Event < ApplicationRecord
  
  validates :start_date, presence: true
  validates :duration, presence: true
  validates :title, presence: true,  length: { in: 5..140 }
  validates :description, presence: true, length: { in: 20..1000 }
  validates :price, presence: true
  validates :location, presence: true
  validate :date_not_in_past
  validate :multiple_of_5
  
  belongs_to :user
  
  after_create :new_event

  def new_event
    EventMailer.new_event(self).deliver_now
  end


  private 
  
  def date_not_in_past
    if start_date < DateTime.now
      errors.add(:start_date, "can't be in the past")
    end
  end

  def multiple_of_5
    if duration % 5 != 0
      errors.add(:duration, "it should be a multiple of 5")    
    end
  end

end
