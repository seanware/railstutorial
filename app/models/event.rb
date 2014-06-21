class Event < ActiveRecord::Base

  has_many :participants
  accepts_nested_attributes_for :participants, allow_destroy: true

  def total_participants
    total = self.participants.count
    self.participants.each do |participant|
      total += participant.guests
    end
    return total
  end
end
