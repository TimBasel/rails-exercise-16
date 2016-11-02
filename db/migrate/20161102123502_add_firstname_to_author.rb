class AddFirstnameToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :first_name, :string
  end
end
