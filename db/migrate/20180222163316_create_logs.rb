class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.integer :duration
      t.references :activity
      t.references :activity_intensity
      t.references :user

      t.timestamps
    end
  end
end
