require "application_system_test_case"

class hospitalsTest < ApplicationSystemTestCase
  setup do
    @hospital = hospitals(:one)
  end

  test "visiting the index" do
    visit hospitals_url
    assert_selector "h1", text: "hospitals"
  end

  test "creating a hospital" do
    visit hospitals_url
    click_on "New hospital"

    fill_in "Address", with: @hospital.address
    fill_in "Close", with: @hospital.close
    check "Emergency" if @hospital.emergency
    fill_in "Mail address", with: @hospital.mail_address
    fill_in "Name", with: @hospital.name
    fill_in "Open", with: @hospital.open
    fill_in "Remarks", with: @hospital.remarks
    fill_in "Telephone number", with: @hospital.telephone_number
    click_on "Create hospital"

    assert_text "hospital was successfully created"
    click_on "Back"
  end

  test "updating a hospital" do
    visit hospitals_url
    click_on "Edit", match: :first

    fill_in "Address", with: @hospital.address
    fill_in "Close", with: @hospital.close
    check "Emergency" if @hospital.emergency
    fill_in "Mail address", with: @hospital.mail_address
    fill_in "Name", with: @hospital.name
    fill_in "Open", with: @hospital.open
    fill_in "Remarks", with: @hospital.remarks
    fill_in "Telephone number", with: @hospital.telephone_number
    click_on "Update hospital"

    assert_text "hospital was successfully updated"
    click_on "Back"
  end

  test "destroying a hospital" do
    visit hospitals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "hospital was successfully destroyed"
  end
end
