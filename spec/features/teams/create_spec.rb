require "rails_helper"

describe "Creating teams" do
  before(:each) do
    @user = login_as_user(FactoryGirl.create(:user))
  end

  it "Redirects to the team index page on success" do
    create_team(user_ids: [@user.id])
    expect(page).to have_content("Salmon, Inc.")
  end

  it "displays an error when the team has no team name" do
    create_team team_name: ""
    expect(page).to have_content("Team name can't be blank")
  end

  it "displays an error when the team has no description" do
    create_team description: ""
    expect(page).to have_content("Description can't be blank")
  end

  it "displays an error when the team has a description less than 20 characters" do
    create_team description: "X"
    expect(page).to have_content("Description is too short")
  end

  it "displays an error when the team has no street_address_1" do
    create_team street_address_1: ""
    expect(page).to have_content("Street address 1 can't be blank")
  end

  it "displays an error when the team has no postal" do
    create_team postal: ""
    expect(page).to have_content("Postal can't be blank")
  end

  it "displays an error when the team has no city" do
    create_team city: ""
    expect(page).to have_content("City can't be blank")
  end

  it "displays an error when the team has no country" do
    create_team country: ""
    expect(page).to have_content("Country can't be blank")
  end

  it "displays an error when the team has no color" do
    create_team color: ""
    expect(page).to have_content("Color can't be blank")
  end

  it "displays an error when the team's color HEX is too short" do
    create_team color: "2323"
    expect(page).to have_content("Color is too short")
  end

  it "displays an error when the team's color HEX is too long" do
    create_team color: "23232323"
    expect(page).to have_content("Color is too long")
  end

  private

  def create_team(options={})
    options[:team_name] ||= "Salmon, Inc."
    options[:description] ||= "Bunch of fishy people"
    options[:street_address_1] ||= "Fishlane 1"
    options[:street_address_2] ||= "Aquarium A"
    options[:postal] ||= "121212"
    options[:city] ||= "Tunaberg"
    options[:country] ||= "Sardinia"
    options[:color] ||= "00AAFF"

    visit new_team_path

    fill_in "Team name", with: options[:team_name]
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
