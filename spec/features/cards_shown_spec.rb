feature 'A user can see card choices' do
  scenario 'A user sees anywhere card' do
    user_details_student
    expect(page).to have_content 'Anywhere Card:'
  end

  scenario 'A user sees anywhere card when doesnt match other conditions' do
    user_details_low_fulltime 
    expect(page).to have_content 'Anywhere Card:'
    expect(page).to have_content '£300'
  end

  scenario 'A user sees all three applicable cards' do
    user_details_paid_student
    expect(page).to have_content 'Anywhere Card:'
    expect(page).to have_content 'Student Life:'
    expect(page).to have_content 'Liquid Card:'
    expect(page).to have_content '£4500'
  end

  scenario 'A user sees all the two applicable cards' do
    user_details_high_fulltime
    expect(page).to have_content 'Anywhere Card:'
    expect(page).to have_content 'Liquid Card:'
    expect(page).to have_content '£3300'
  end

  scenario 'A user sees all the two applicable cards' do
    user_details_student
    expect(page).to have_content 'Anywhere Card:'
    expect(page).to have_content 'Student Life:'
    expect(page).to have_content '£1500'
  end
end