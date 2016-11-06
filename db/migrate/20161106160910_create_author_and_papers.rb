class CreateAuthorAndPapers < ActiveRecord::Migration
  def change
    create_table :author_and_papers, id: false do |t|
	t.belongs_to :author, index: true
	t.belongs_to :paper, index: true
    end
  end
end
