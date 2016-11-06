require 'rails_helper'

RSpec.describe "authors/index.html.erb", type: :view do

  before(:context) do
    @author = create(:author)
    assign(:authors, Author.all)
  end

  after(:context) do
    Author.delete(@author)
  end

  before(:example) do
    render :template => "authors/index.html.erb"        
  end

  it "displays author name" do
    expect(rendered).to have_text("Alan Turing")
  end

  it "displays author homepage" do
    expect(rendered).to have_text("http://wikipedia.de/Alan_Turing")
  end

  it "has new author link" do
    expect(rendered).to have_css("a", :text => "Add author")
  end

  it "links to the author page" do
    expect(rendered).to have_css("a", :text => "Show")
  end

  it "links to the author edit page" do
    expect(rendered).to have_css("a", :text => "Edit")
  end
end
