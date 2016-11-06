require 'rails_helper'

RSpec.describe "papers/show", type: :view do
  before(:each) do
    @author = create(:author)
    @paper = create(:paper)
    assign(:paper, @paper)
  end

  after(:each) do
    Author.delete(@author)
    Paper.delete(@paper)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Venue/)
    expect(rendered).to match(/1/)
  end

  it "shows the authors name" do
    render
    expect(rendered).to have_text("Alan Turing")
  end


end
