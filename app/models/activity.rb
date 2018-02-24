class Activity < ApplicationRecord
  has_many :activity_intensities
  has_many :logs
end
