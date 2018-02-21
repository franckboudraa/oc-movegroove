class RemoveTypeFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :type, :integer
  end
end
