# encoding: utf-8

steps_for :common do
  step 'googleを訪問' do
    url = "http://www.google.com"
    visit url
    page.save_screenshot 'screenshot.png'
  end

  step 'googleのページが表示されている' do
    expect(page).to have_content("Google.com")
    page.save_screenshot 'spec/google.png'
  end

  step '「長谷川豊」で検索する' do
    within("form") do
      fill_in "q", with: "長谷川豊"
    end
    click_on "検索"
  end

  step '検索結果のページが表示されている' do
    page.save_screenshot 'spec/search_result.png'
    expect(page).to have_content("長谷川豊")
  end
end
