require 'rails_helper'

describe 'Welcome pages' do
  it 'homepage shows header' do
    visit '/'
    expect(page).to have_content(I18n.t('welcomes.index.availability'))
  end

  it 'terms shows' do
    visit '/'
    click_link I18n.t('welcomes.footer.terms')
    expect(page).to have_content('General Terms and Conditions')
  end

  it 'blog index shows' do
    visit '/'
    click_link I18n.t('shared.navbar.blog')
    expect(page).to have_content(I18n.t('shared.navbar.blog'))
  end

  xit 'work index shows' do
    # Work section not yet activated
    visit '/'
    click_link I18n.t('shared.navbar.work')
    expect(page).to have_content('A niche product')
  end

  xit 'work shows' do
    # Work section not yet activated
    visit '/'
    click_link I18n.t('shared.navbar.work')

    within "#work_1" do
      click_link "Read more"
    end

    expect(page).to have_content('The Product')
  end
end
