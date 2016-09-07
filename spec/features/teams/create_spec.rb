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
    options[:color] ||= "00AAFF"

    visit new_team_path

    fill_in "Team name", with: options[:team_name]
    fill_in "Description", with: options[:description]
    fill_in "Color", with: options[:color]
    click_button "Save"
  end

end
