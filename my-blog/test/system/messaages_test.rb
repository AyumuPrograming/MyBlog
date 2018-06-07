require "application_system_test_case"

class MessaagesTest < ApplicationSystemTestCase
  setup do
    @messaage = messaages(:one)
  end

  test "visiting the index" do
    visit messaages_url
    assert_selector "h1", text: "Messaages"
  end

  test "creating a Messaage" do
    visit messaages_url
    click_on "New Messaage"

    fill_in "Message", with: @messaage.message
    fill_in "Title", with: @messaage.title
    click_on "Create Messaage"

    assert_text "Messaage was successfully created"
    click_on "Back"
  end

  test "updating a Messaage" do
    visit messaages_url
    click_on "Edit", match: :first

    fill_in "Message", with: @messaage.message
    fill_in "Title", with: @messaage.title
    click_on "Update Messaage"

    assert_text "Messaage was successfully updated"
    click_on "Back"
  end

  test "destroying a Messaage" do
    visit messaages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Messaage was successfully destroyed"
  end
end
