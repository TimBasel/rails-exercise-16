require 'rails_helper'

RSpec.describe Paper, type: :model do
  
  it "requires a title" do
    @paper = Paper.new
    expect(@paper).to_not be_valid
  end
end
