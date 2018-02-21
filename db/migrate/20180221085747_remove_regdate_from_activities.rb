class RemoveRegdateFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :regdate, :timestamp
  end
end
