class AddFeelingToLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :logs, :feeling, :varchar
  end
end
