feature "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo "Buy water"
    click_on "Mark complete"

    expect(page).to display_completed_todo "Buy water"
  end

end
