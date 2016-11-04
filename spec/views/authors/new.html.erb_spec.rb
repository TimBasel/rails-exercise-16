require 'rails_helper'

RSpec.describe "authors/new.html.erb", type: :view do
  
  before(:context) do
    assign(:author, Author.new)
  end

  it "has field first name" do
    render :template => "authors/new.html.erb"
    expect(rendered).to have_field("First name")
  end

  it "has field last name" do
    render :template => "authors/new.html.erb"
    expect(rendered).to have_field("Last name")
  end

  it "has button create author" do
    render :template => "authors/new.html.erb"
    expect(rendered).to have_button("Create Author")
  end

end
