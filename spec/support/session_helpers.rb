include Warden::Test::Helpers

module CommonFeatureHelpers

  def self.included(base)
    base.before(:all) do
      self.default_url_options = { locale: :en, host: ENV['SERVER_NAME'] }
    end
  end

  def login_as_user(user = nil)
    @user = user || FactoryGirl.create(:user)
    visit new_user_session_path
    within '#new_user' do
      fill_in "Email", with: @user.email
      fill_in "Password", with: "password"
      click_on "Log in"
    end
    @user
  end

end
