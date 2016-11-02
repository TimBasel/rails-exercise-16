class AddLastnameToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :last_name, :string
  end
end
