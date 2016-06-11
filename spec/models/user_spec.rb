require 'rails_helper'

RSpec.describe User, type: :model do

  it "should be able to create a admin" do
    user = FactoryGirl.create(:user, :is_admin)
    expect( user ).to be_valid
    expect( user.admin ).to be true
  end
  it "should be able to create a regular" do
    user = FactoryGirl.create(:user, :is_regular)
    expect( user ).to be_valid
    expect( user.admin ).to be false
  end

  context 'team_list' do
    before(:all) do
      @admin = FactoryGirl.create(:user, :is_admin)
      @regular1 = FactoryGirl.create(:user, :is_regular)
      @team1 = FactoryGirl.create(:team, user_ids: [@regular1.id])
      @regular2 = FactoryGirl.create(:user, :is_regular)
      @team1 = FactoryGirl.create(:team, user_ids: [@regular2.id])
    end
    it "should show all teams to admin" do
      expect( @admin.team_list.count ).to be >= 2
    end
  end
end
