def user_details_student 
  visit '/'
  fill_in('name',with: 'Bryn')
  fill_in('financial history',with: 'good')
  fill_in('employment status',with: 'student')
  fill_in('earnings',with: '1000')
  fill_in('postcode',with: 'sw1 kw9')
  fill_in('house number',with: '2')
  click_on ('submit')
end 

def user_details_student 
  visit '/'
  fill_in('name',with: 'Bryn')
  fill_in('financial history',with: 'good')
  fill_in('employment status',with: 'student')
  fill_in('earnings',with: '1000')
  fill_in('postcode',with: 'sw1 kw9')
  fill_in('house number',with: '2')
  click_on ('submit')
end 

def user_details_paid_student 
  visit '/'
  fill_in('name',with: 'Bryn')
  fill_in('financial history',with: 'good')
  fill_in('employment status',with: 'student')
  fill_in('earnings',with: '170000')
  fill_in('postcode',with: 'sw1 kw9')
  fill_in('house number',with: '2')
  click_on ('submit')
end 

def user_details_high_fulltime
  visit '/'
  fill_in('name',with: 'Bryn')
  fill_in('financial history',with: 'good')
  fill_in('employment status',with: 'full-time')
  fill_in('earnings',with: '20000')
  fill_in('postcode',with: 'sw1 kw9')
  fill_in('house number',with: '2')
  click_on ('submit')
end 

def user_details_low_fulltime 
  visit '/'
  fill_in('name',with: 'Bryn')
  fill_in('financial history',with: 'good')
  fill_in('employment status',with: 'full-time')
  fill_in('earnings',with: '1000')
  fill_in('postcode',with: 'sw1 kw9')
  fill_in('house number',with: '2')
  click_on ('submit')
end 