class AddProfileDetailsToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :profile_title, :string
    add_column :users, :about, :text
  end
end
