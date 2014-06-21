class Participant < ActiveRecord::Base

  belongs_to :event
  accepts_nested_attributes_for :event, allow_destroy: true


end
