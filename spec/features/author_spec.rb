require 'rails_helper'

describe "New Author Page", :type => :feature do
  
  it "should create a new author" do
    visit new_author_path

    fill_in 'First name', with: 'Alan'
    fill_in 'Last name', with: 'Turing'
    fill_in 'Homepage', with: 'http://wikipedia.de/Alan_Turing'
    
    click_button 'Create Author'

    Author.find_by!(:first_name => 'Alan', :last_name => 'Turing')
  end

  it "should require a last name to create an author" do
    visit new_author_path

    fill_in 'First name', with: 'Alan'
    fill_in 'Homepage', with: 'http://wikipedia.de/Alan_Turing'
    
    click_button 'Create Author'

    expect(page).to have_text("Last name can't be blank")
  end

  it "should save changes to the author after editing" do
    @author = create(:author)
    visit edit_author_path(@author)

    fill_in 'First name', with: 'Alan Mathison'
    
    click_button 'Save changes'

    @author = Author.find(@author.id)
    expect(@author.first_name).to eq("Alan Mathison")
    Author.delete(@author)
  end

end
