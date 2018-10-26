require "application_system_test_case"

class SubpagesTest < ApplicationSystemTestCase
  setup do
    @subpage = subpages(:one)
  end

  test "visiting the index" do
    visit subpages_url
    assert_selector "h1", text: "Subpages"
  end

  test "creating a Subpage" do
    visit subpages_url
    click_on "New Subpage"

    fill_in "Body", with: @subpage.body
    fill_in "Heading", with: @subpage.heading
    fill_in "Link", with: @subpage.link
    fill_in "Page", with: @subpage.page_id
    fill_in "Subheading", with: @subpage.subheading
    fill_in "Subtitle", with: @subpage.subtitle
    fill_in "Title", with: @subpage.title
    fill_in "User", with: @subpage.user_id
    fill_in "Weight", with: @subpage.weight
    click_on "Create Subpage"

    assert_text "Subpage was successfully created"
    click_on "Back"
  end

  test "updating a Subpage" do
    visit subpages_url
    click_on "Edit", match: :first

    fill_in "Body", with: @subpage.body
    fill_in "Heading", with: @subpage.heading
    fill_in "Link", with: @subpage.link
    fill_in "Page", with: @subpage.page_id
    fill_in "Subheading", with: @subpage.subheading
    fill_in "Subtitle", with: @subpage.subtitle
    fill_in "Title", with: @subpage.title
    fill_in "User", with: @subpage.user_id
    fill_in "Weight", with: @subpage.weight
    click_on "Update Subpage"

    assert_text "Subpage was successfully updated"
    click_on "Back"
  end

  test "destroying a Subpage" do
    visit subpages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subpage was successfully destroyed"
  end
end
