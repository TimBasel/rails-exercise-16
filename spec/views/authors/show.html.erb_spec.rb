require 'rails_helper'

RSpec.describe "authors/show.html.erb", type: :view do

  it "shows the first name" do
    assign(:author, build(:author))
    render :template => "authors/show.html.erb"
    expect(rendered).to have_text("First name: Alan")
  end

  it "shows the last name" do
    assign(:author, build(:author))
    render :template => "authors/show.html.erb"
    expect(rendered).to have_text("Last name: Turing")
  end
end
