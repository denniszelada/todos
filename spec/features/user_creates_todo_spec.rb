require "rails_helper"

feature "User creates todos" do
  scenario "successfully" do
    sign_in
    
    create_todo "Buy water"
    expect(page).to display_todo "Buy water"
  end
end
