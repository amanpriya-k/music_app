# == Schema Information
#
# Table name: notes
#
#  id       :integer          not null, primary key
#  user_id  :integer          not null
#  track_id :integer          not null
#  body     :text             not null
#

class Note < ApplicationRecord
  validates :user_id, :track_id, :body, presence: true

  belongs_to :track

  belongs_to :user

end
