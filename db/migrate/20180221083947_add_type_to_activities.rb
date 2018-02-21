class AddTypeToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :type, :integer
  end
end
