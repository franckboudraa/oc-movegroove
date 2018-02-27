class SetDefaultAvatarToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :avatar, :string, :default => '/img/avatars/sample.jpg'
  end
end
