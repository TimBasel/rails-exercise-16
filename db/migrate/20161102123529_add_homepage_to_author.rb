class AddHomepageToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :homepage, :string
  end
end
