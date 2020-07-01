def sign_up_student
  visit "/"
  click_button "Student login"
  click_link "Sign up"
  fill_in "First name", with: "Test"
  fill_in "Last name", with: "Testerson"
  fill_in "Email", with: "test123@student.com"
  fill_in "Password", with: "12345q"
  fill_in "Password confirmation", with: "12345q"
  click_button "Sign up"
end

def sign_in_student
  visit "/"
  click_button "Student login"
  fill_in "Email", with: "test123@student.com"
  fill_in "Password", with: "12345q"
  click_button "Log in"
end

def sign_up_mentor
  visit "/"
  click_button "Mentor login"
  click_link "Sign up"
  fill_in "First name", with: "Test"
  fill_in "Last name", with: "Testerson"
  fill_in "Email", with: "test123@mentor.com"
  fill_in "Password", with: "12345q"
  fill_in "Password confirmation", with: "12345q"
  click_button "Sign up"
end

def sign_in_mentor
  visit "/"
  click_button "Mentor login"
  fill_in "Email", with: "test123@mentor.com"
  fill_in "Password", with: "12345q"
  click_button "Log in"
end

def create_category
  click_link "Forum"
  click_link "Create A New Category"
  fill_in "Name", with: "Exams"
  click_button "Create"
end

def sign_out_student
  click_link "Log out"
end
