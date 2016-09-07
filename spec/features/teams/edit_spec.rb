require "rails_helper"

describe "Editing teams" do
  before(:each) do
    @user = login_as_user(FactoryGirl.create(:user))
  end

  let!(:team) {Team.create(
    user_ids: [@user.id],
    name: "Salmon, Inc.",
    description: "Bunch of fishy people",
    street_address_1: "Fishlane 1",
    street_address_2: "Aquarium A",
    postal: "121212",
    city: "Tunaberg",
    country: "Sardinia",
    color: "00AAFF"
  )}

  it "updates a team succesfully with correct information" do
    update_team team: team,
                name: 'New title',
                description: 'New description that is long'

    team.reload

    expect(page).to have_content("Team was successfully edited")
    expect(team.name).to eq("New title")
    expect(team.description).to eq("New description that is long")
  end

  private

  def update_team(options={})
    options[:name] ||= "Baka"
    options[:description] ||= "Bunch"
    options[:street_address_1] ||= "Fishlane 2"
    options[:street_address_2] ||= "Aquarium B"
    options[:postal] ||= "212121"
    options[:city] ||= "Tuna"
    options[:country] ||= "Sardines"
    options[:color] ||= "AA00FF"
    team = options[:team]

    visit teams_path
    within "#team_#{team.id}" do
      click_link team.name
    end
    click_link "Edit"

    fill_in "Team name", with: options[:name]
    fill_in "Description", with: options[:description]
    fill_in "Street address 1", with: options[:street_address_1]
    fill_in "Street address 2", with: options[:street_address_2]
    fill_in "Postal", with: options[:postal]
    fill_in "City", with: options[:city]
    fill_in "Country", with: options[:country]
    fill_in "Color", with: options[:color]
    click_button "Save"
  end

end
