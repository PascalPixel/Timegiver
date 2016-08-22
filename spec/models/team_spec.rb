require 'rails_helper'

describe Team do

  it "should be able to create a team" do
    team = FactoryGirl.build(:team)
    expect( team ).to be_valid
  end
  it "can be linked to a user" do
    user = FactoryGirl.create(:user)
    assert !user.admin
    team = FactoryGirl.create(:team, user_ids: [user.id])
    assert team.valid?
    expect( user.teams.include? team ).to be_truthy
  end

end
