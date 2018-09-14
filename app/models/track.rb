# == Schema Information
#
# Table name: tracks
#
#  id       :integer          not null, primary key
#  album_id :integer          not null
#  title    :string           not null
#  ord      :integer          not null
#  lyrics   :text
#  regular  :boolean          not null
#

class Track < ApplicationRecord
  validates :album_id, :title, :ord, presence: true

  belongs_to :album

  has_many :notes

end
