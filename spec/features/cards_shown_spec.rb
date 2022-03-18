feature 'A user can see card choices' do
  scenario 'A user sees anywhere card' do
    user_details_student
    expect(page).to have_content 'Anywhere Card:'
  end
end