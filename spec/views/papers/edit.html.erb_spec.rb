require 'rails_helper'

RSpec.describe "papers/edit", type: :view do
  before(:each) do
    @paper = create(:paper)
    assign(:paper, @paper)
    assign(:authors, Author.all)
  end

  after(:each) do
    Paper.delete(@paper)
  end

  it "renders the edit paper form" do
    render

    assert_select "form[action=?][method=?]", paper_path(@paper), "post" do

      assert_select "input#paper_title[name=?]", "paper[title]"

      assert_select "input#paper_venue[name=?]", "paper[venue]"

      assert_select "input#paper_year[name=?]", "paper[year]"
    end
  end


  it "has 5 author selection boxes" do
    render
    expect(rendered).to have_select("paper_author_id_1")
    expect(rendered).to have_select("paper_author_id_2")
    expect(rendered).to have_select("paper_author_id_3")
    expect(rendered).to have_select("paper_author_id_4")
    expect(rendered).to have_select("paper_author_id_5")
  end

  it "preselects the author" do
    render
    expect(rendered).to have_select("paper_author_id_1", :selected => "Alan Turing")
  end
end
