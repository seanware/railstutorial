class Participant < ActiveRecord::Base

  belongs_to :event
  accepts_nested_attributes_for :event, allow_destroy: true

  def popularity_label
    if guests < 2
      ""
    elsif guests < 5
      "Friendly"
    elsif guests < 10
      "Popular"
    elsif guests < 25
      "Social Butterfly"
    else
      "Pop Icon"
    end
  end



end
