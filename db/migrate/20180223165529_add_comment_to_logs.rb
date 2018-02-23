class AddCommentToLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :logs, :comment, :varchar
  end
end
