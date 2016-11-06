require 'rails_helper'

RSpec.describe Paper, type: :model do
  
  it "requires a title" do
    @paper = Paper.new(venue: "whatever")
    expect(@paper).to_not be_valid
  end

  it "requires a venue" do
    @paper = Paper.new(title: "whatever")
    expect(@paper).to_not be_valid
  end
end
