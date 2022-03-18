feature 'A user can enter details' do
  scenario 'A user enters details form' do
    user_details_student
    expect(page).to have_content 'Hello, Bryn!'
  end
end