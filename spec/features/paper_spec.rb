require 'rails_helper'

describe "Paper pages", :type => :feature do
  
  it "should create a new author" do
    @paper = create(:paper)    
    @paper2 = create(:paper2)

    visit papers_path( year: 1950)
    Paper.delete(@paper)
    Paper.delete(@paper2)
    expect(page).not_to have_text "go to statement considered harmful"
  end
end
