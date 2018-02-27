class Activity < ApplicationRecord
  has_many :activity_intensities, dependent: :destroy
  has_many :logs, dependent: :destroy
end
