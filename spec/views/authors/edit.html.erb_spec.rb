require 'rails_helper'

RSpec.describe "authors/edit.html.erb", type: :view do

  before(:context) do
    @author = create(:author)
    assign(:author, @author)
  end

  after(:context) do
    Author.delete(@author)
  end

  before(:example) do
    render :template => "authors/edit.html.erb"
  end

  it "displays author first name" do
    expect(rendered).to have_field("First name")
  end
end
