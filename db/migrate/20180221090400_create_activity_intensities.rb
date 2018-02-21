class CreateActivityIntensities < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_intensities do |t|
      t.string :title
      t.decimal :met

      t.timestamps
    end
  end
end
