require "application_system_test_case"

class InfosTest < ApplicationSystemTestCase
  setup do
    @info = infos(:one)
  end

  test "visiting the index" do
    visit infos_url
    assert_selector "h1", text: "Infos"
  end

  test "creating a Info" do
    visit infos_url
    click_on "New Info"

    fill_in "Address", with: @info.Address
    fill_in "Age", with: @info.Age
    fill_in "First name", with: @info.First_name
    fill_in "Last name", with: @info.Last_name
    fill_in "Phonenumber", with: @info.PhoneNumber
    fill_in "Email", with: @info.email
    fill_in "Gender", with: @info.gender
    click_on "Create Info"

    assert_text "Info was successfully created"
    click_on "Back"
  end

  test "updating a Info" do
    visit infos_url
    click_on "Edit", match: :first

    fill_in "Address", with: @info.Address
    fill_in "Age", with: @info.Age
    fill_in "First name", with: @info.First_name
    fill_in "Last name", with: @info.Last_name
    fill_in "Phonenumber", with: @info.PhoneNumber
    fill_in "Email", with: @info.email
    fill_in "Gender", with: @info.gender
    click_on "Update Info"

    assert_text "Info was successfully updated"
    click_on "Back"
  end

  test "destroying a Info" do
    visit infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Info was successfully destroyed"
  end
end
