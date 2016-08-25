require 'rails_helper'

RSpec.describe User, type: :model do

  it "should be able to create a user" do
    user = FactoryGirl.create(:user)
    expect( user ).to be_valid
  end

  context 'team_list' do
    before(:all) do
      @admin = FactoryGirl.create(:user)
      @regular1 = FactoryGirl.create(:user)
      @team1 = FactoryGirl.create(:team, user_ids: [@regular1.id])
      @regular2 = FactoryGirl.create(:user)
      @team1 = FactoryGirl.create(:team, user_ids: [@regular2.id])
    end
  end
end
