require 'rails_helper'

RSpec.describe "authors/index.html.erb", type: :view do

  it "displays author name" do
    create(:author)
    assign(:authors, Author.all)
    render :template => "authors/index.html.erb"
    expect(rendered).to have_text("Alan Turing")
  end

end
