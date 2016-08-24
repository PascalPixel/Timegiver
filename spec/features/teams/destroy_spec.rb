require "rails_helper"

describe "Deleting teams" do
  before(:each) do
    @user = login_as_user(FactoryGirl.create(:user)
  end

  let!(:team) {Team.create(
    user_ids: [@user.id],
    team_name: "Salmon, Inc.",
    description: "Bunch of fishy people",
    street_address_1: "Fishlane 1",
    street_address_2: "Aquarium A",
    postal: "121212",
    city: "Tunaberg",
    country: "Sardinia",
    color: "00AAFF"
  )}

  it "can click the delete link" do
    visit teams_path

    within "#team_#{team.id}" do
      click_link team.team_name
    end
    click_link "Delete"

    expect(page).to_not have_content(team.team_name)
  end
end
