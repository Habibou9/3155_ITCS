require 'rails_helper.rb'

feature"User adds a contact" do
    scenario "User successfully navigates to new contacts page from the listing contacts page" do
        visit address_path
        expect(page).to have_content("Listing Contacts")
        click_link "New Contact"
        expect(page).to have_content("Welcome to the Address Book")
        expect(page).to have_field("First name")
        expect(page).to have_field("Last name")
        expect(page).to have_field("Phone")
        expect(page).to have_field("Email address")
        expect(page).to have_field("Home address")
        expect(page).to have_field("Company")
    end

    scenario "User successfully creates a contact" do
        visit new_address_path
        expect(page).to have_content("Welcome to the Address Book")
        fill_in "First name" , with: "New Contact First Name"
        fill_in "Last name" , with: "New Contact Last Name"
        fill_in "Phone" , with: "000-000-0000"
        fill_in "Email address" , with: "New Contact @email.com"
        fill_in "Home address" , with: "New Contact Home Address"
        fill_in "Company" , with: "New Contact Company"
        click_button 'Create Address'
        expect(page).to have_content("New Contact First Name")
        expect(page).to have_content("New Contact Last Name")
        expect(page).to have_content("000-000-0000")
        expect(page).to have_content("New Contact @email.com")
        expect(page).to have_content("New Contact Home Address")
        expect(page).to have_content("New Contact Company")
    end
end 