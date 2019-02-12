require 'rails_helper'

RSpec.describe Attendance, type: :model do

  before(:each) do 
    @attendance = FactoryBot.create(:attendance)
  end



  context "validations" do

    it "is valid with valid attributes" do
      expect(@attendance).to be_a(Attendance)
      expect(@attendance).to be_valid
      end

	end

end