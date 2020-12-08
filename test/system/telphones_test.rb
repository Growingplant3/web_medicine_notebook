require "application_system_test_case"

class TelphonesTest < ApplicationSystemTestCase
  setup do
    @telphone = telphones(:one)
  end

  test "visiting the index" do
    visit telphones_url
    assert_selector "h1", text: "Telphones"
  end

  test "creating a Telphone" do
    visit telphones_url
    click_on "New Telphone"

    fill_in "Num1", with: @telphone.num1
    fill_in "Num2", with: @telphone.num2
    fill_in "Num3", with: @telphone.num3
    click_on "Create Telphone"

    assert_text "Telphone was successfully created"
    click_on "Back"
  end

  test "updating a Telphone" do
    visit telphones_url
    click_on "Edit", match: :first

    fill_in "Num1", with: @telphone.num1
    fill_in "Num2", with: @telphone.num2
    fill_in "Num3", with: @telphone.num3
    click_on "Update Telphone"

    assert_text "Telphone was successfully updated"
    click_on "Back"
  end

  test "destroying a Telphone" do
    visit telphones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Telphone was successfully destroyed"
  end
end
