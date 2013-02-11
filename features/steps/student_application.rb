class Spinach::Features::StudentApplication < Spinach::FeatureSteps
  step 'I am at application form' do
    visit new_application_path
  end

  step 'I enter student fullname' do
    fill_in 'FullName', :with => 'Ali Veli'
  end

  step 'I fill in student ID Number' do
    fill_in 'IDNumber', :with => '12345678900'
  end

  step 'I fill in student birthday' do
    fill_in 'Birthday', :with => '20.10.2008'
  end

  step 'I fill in student gender' do
    fill_in 'Gender', :with => '1'
  end

  step 'I fill in parent fullname' do
    fill_in 'ParentFullName', :with => 'Ali Veli'
  end

  step 'I click register button' do
    click_button('Save')
  end

  step 'I should see "Process is completed succesfully" message' do
    assert has_selector?("div#success",:text=>"Process was completed succesfully")
  end
end
