class AddDateDurationToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :regdate, :timestamp
    add_column :activities, :duration, :int
  end
end
