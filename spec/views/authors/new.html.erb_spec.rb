require 'rails_helper'

RSpec.describe "authors/new.html.erb", type: :view do
  it "has field first name" do
    render :template => "authors/new.html.erb"
    expect(rendered).to have_field("First name")
  end
end
