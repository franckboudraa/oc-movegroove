class RemoveUserIdFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :user_id, :bigint
  end
end
