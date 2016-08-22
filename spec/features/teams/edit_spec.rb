require "rails_helper"

describe "Editing teams" do
  before(:each) do
    @user = login_as_user(FactoryGirl.create(:user, :is_admin))
  end

  let!(:team) {Team.create(
    user_ids: [@user.id],
    team_name: "Salmon, Inc.",
    description: "Bunch of fishy people",
    last_name: "Salmoncake",
    first_name: "Sammy",
    title: "Head Fish",
    street_address_1: "Fishlane 1",
    street_address_2: "Aquarium A",
    postal: "121212",
    city: "Tunaberg",
    country: "Sardinia",
    rate: 200,
    currency_sign: "🐟",
    currency: "USD",
    color: "00AAFF"
  )}

  it "updates a team succesfully with correct information" do
    update_team team: team,
                  team_name: 'New title',
                  description: 'New description that is long'

    team.reload

    expect(page).to have_content("Team was successfully edited")
    expect(team.team_name).to eq("New title")
    expect(team.description).to eq("New description that is long")
  end

  private

  def update_team(options={})
    options[:team_name] ||= "Baka"
    options[:description] ||= "Bunch"
    options[:last_name] ||= "Salmon"
    options[:first_name] ||= "Sam"
    options[:title] ||= "Heads"
    options[:street_address_1] ||= "Fishlane 2"
    options[:street_address_2] ||= "Aquarium B"
    options[:postal] ||= "212121"
    options[:city] ||= "Tuna"
    options[:country] ||= "Sardines"
    options[:rate] ||= 100
    options[:currency_sign] ||= "€"
    options[:currency] ||= "EUR"
    options[:color] ||= "AA00FF"
    team = options[:team]

    visit teams_path
    within "#team_#{team.id}" do
      click_link team.team_name
    end
    click_link "Edit"

    fill_in "Team name", with: options[:team_name]
    fill_in "Description", with: options[:description]
    fill_in "Last name", with: options[:last_name]
    fill_in "First name", with: options[:first_name]
    fill_in "Title", with: options[:title]
    fill_in "Street address 1", with: options[:street_address_1]
    fill_in "Street address 2", with: options[:street_address_2]
    fill_in "Postal", with: options[:postal]
    fill_in "City", with: options[:city]
    fill_in "Country", with: options[:country]
    fill_in "Rate", with: options[:rate]
    fill_in "team_currency_sign", with: options[:currency_sign]
    fill_in "team_currency", with: options[:currency]
    fill_in "Color", with: options[:color]
    click_button "Save"
  end

end
