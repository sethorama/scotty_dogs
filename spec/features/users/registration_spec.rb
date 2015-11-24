require 'rails_helper'

describe "Creating user" do
    it "Allows the user to create a login" do
        visit new_user_path
        fill_in "Username", with: "sethorama"
        fill_in "Password", with: "pass1234"
        fill_in "Password confirmation", with: "pass1234"
        click_button "Sign Up"

        expect(User.count).to eq(1)
    end

    it "redirects to the puppies page after regiustration" do
        visit new_user_path
        fill_in "Username", with: "sethorama"
        fill_in "Password", with: "pass1234"
        fill_in "Password confirmation", with: "pass1234"
        click_button "Sign Up"

        expect(page).to have_content('Listing Puppies')
    end
end