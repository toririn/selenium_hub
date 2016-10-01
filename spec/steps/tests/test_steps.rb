# encoding: utf-8

steps_for :common do
  step 'googleを訪問' do
    url = "http://www.google.com"
    visit url
  end

  step 'googleのページが表示されている' do
    expect(page).to have_content("Google.com")
  end
end
