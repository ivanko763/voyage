class Spinach::Features::ViewerVisitsTheHomePage < Spinach::FeatureSteps
  step 'I am on the home page' do
    visit root_path
  end

  step 'I should see "SOURCE CODE"' do
    page.has_content?('SOURCE CODE').must_equal true
  end

  step 'I should see "SEE A DOCTOR"' do
    page.has_content?('SEE A DOCTOR').must_equal true
  end
end
