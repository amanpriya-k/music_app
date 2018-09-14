# == Schema Information
#
# Table name: albums
#
#  id              :integer          not null, primary key
#  title           :string           not null
#  year            :integer          not null
#  band_id         :integer          not null
#  studio_recorded :boolean          default(TRUE), not null
#

class Album < ApplicationRecord
  validates :title, :year, :band_id, presence: true

  belongs_to :band

  has_many :tracks, dependent: :destroy

end
