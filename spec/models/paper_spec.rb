require 'rails_helper'

RSpec.describe Paper, type: :model do
  
  it "requires a title" do
    @paper = Paper.new(venue: "whatever", year: 1337)
    expect(@paper).to_not be_valid
  end

  it "requires a venue" do
    @paper = Paper.new(title: "whatever", year: 1337)
    expect(@paper).to_not be_valid
  end

  it "requires a year" do
    @paper = Paper.new(title: "whatever", venue: "1337")
    expect(@paper).to_not be_valid
  end

  it "requires year to be an integer" do
    @paper = Paper.new(title: "what", venue: "ever", year: "forgotten")
    expect(@paper).to_not be_valid
  end
end
