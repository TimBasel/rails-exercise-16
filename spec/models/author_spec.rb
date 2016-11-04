require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should create an instance of author" do
    @author = build(:author)
    expect(@author).to_not be_nil
  end

  it "returns full name" do
    @author = build(:author)
    expect(@author.name).to eq("Alan Turing")
  end

  it "requires a last name" do
    @author = Author.new(:first_name => "Alan", :homepage => "http://example.com/")
    expect(@author).to_not be_valid
  end
end
