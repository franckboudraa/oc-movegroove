class Log < ApplicationRecord
  belongs_to :activity
  belongs_to :activity_intensity
  belongs_to :user
end
