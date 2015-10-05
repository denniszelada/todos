require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see other's todos" do
    Todo.create(title: "Buy water", email: "someone_else@example.com")

    sign_in_as "someone@example.com"
    expect(page).not_to display_todo "Buy water"
  end
end
