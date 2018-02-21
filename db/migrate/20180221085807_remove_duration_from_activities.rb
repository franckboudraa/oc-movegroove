class RemoveDurationFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :duration, :integer
  end
end
