class Spinach::Features::AdminAddsThePlanet < Spinach::FeatureSteps
  step 'I am on the planet page' do
    visit planets_path
  end

  step 'I should see "New Planet"' do
    page.has_content?('New Planet').must_equal true
  end

  step 'I should see "Add Planet"' do
    page.has_content?('Add Planet').must_equal true
  end

  step 'I click "Add Planet"' do
    click_on "Add Planet"
  end

  step 'I am on the Add Planet page' do
    visit new_planet_path
  end

  step 'I add a new planet' do
    fill_in('Name', with: 'Testplanet')
	find('#planet_color_250250150').click
    fill_in('Satellites', with: '10')
	click_on('Create Planet')
  end

  step 'I should see it on the home page' do
    page.driver.browser.manage.window.resize_to(1200,800)
    visit root_path
	page.save_screenshot('addedplanet.jpg')
    page.has_content?('Testplanet').must_equal true
  end

  step 'I click Planet Name' do
	click_on('Testplanet')
  end

  step 'I should see Link to Earth' do
    page.has_content?('Earth').must_equal true
  end

  step 'I should not see Link to Created Planet' do
    page.has_content?('Testplanet').must_equal false
	page.save_screenshot('testplanet.jpg')
  end

  step 'I click on Edit link' do
	find_link('Edit').click   #find('Testplanet').
  end

  step 'I should see "Editing Planet" title' do
    page.has_content?('Editing Planet').must_equal true
  end

  step 'I edit a planet' do
    fill_in('Name', with: 'MyNewPlanet')
	click_on('Update Planet')
  end

  step 'I should see the changes on the home page' do
    visit root_path
    page.has_content?('MyNewPlanet').must_equal true
  end

  step 'I should not see previous version' do
	page.save_screenshot('editedplanet.jpg')
    page.has_content?('Testplanet').must_equal false
  end

  step 'I click on Destroy link' do
	accept_alert do
	  find_link('Destroy').click
	end
  end

  step 'I should not see destroyed planet name' do
    page.has_content?('MyNewPlanet').must_equal false
  end

  step 'I should not see destroyed planet on the home page' do
    visit root_path
	page.save_screenshot('destroyedplanet.jpg')
    page.has_content?('MyNewPlanet').must_equal false
  end


end
