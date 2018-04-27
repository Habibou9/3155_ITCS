require 'rails_helper.rb'

feature"User adds a contact" do
    scenario "User successfully navigates to new contacts page from the listing contacts page" do
        visit addresses_path
        expect(page).to have_content("Contacts")
        click_link "New Contact"
        expect(page).to have_content("New Contact")
        expect(page).to have_field("First Name")
        expect(page).to have_field("Last Name")
        expect(page).to have_field("Phone Number")
        expect(page).to have_field("Email Address")
        expect(page).to have_field("Home Address")
        expect(page).to have_field("Company")
    end

    scenario "User successfully creates a contact" do
        visit new_address_path
        expect(page).to have_content("New Contact")
        fill_in "First Name" , with: "New Contact Name"
        fill_in "Last Name" , with: "New Contact Last Name"
        fill_in "Phone Number" , with: "000-000-0000"
        fill_in "Email Address" , with: "New Contact @email.com"
        fill_in "Home Address" , with: "New Contact Home Address"
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