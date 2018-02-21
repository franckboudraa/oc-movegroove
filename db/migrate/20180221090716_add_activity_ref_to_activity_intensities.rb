class AddActivityRefToActivityIntensities < ActiveRecord::Migration[5.2]
  def change
    add_reference :activity_intensities, :activity, foreign_key: true
  end
end
