require "application_system_test_case"

class MembershipTypesTest < ApplicationSystemTestCase
  setup do
    @membership_type = membership_types(:one)
  end

  test "visiting the index" do
    visit membership_types_url
    assert_selector "h1", text: "Membership types"
  end

  test "should create membership type" do
    visit membership_types_url
    click_on "New membership type"

    fill_in "Code", with: @membership_type.code
    fill_in "Description", with: @membership_type.description
    fill_in "Organisation", with: @membership_type.organisation_id
    fill_in "Price", with: @membership_type.price
    click_on "Create Membership type"

    assert_text "Membership type was successfully created"
    click_on "Back"
  end

  test "should update Membership type" do
    visit membership_type_url(@membership_type)
    click_on "Edit this membership type", match: :first

    fill_in "Code", with: @membership_type.code
    fill_in "Description", with: @membership_type.description
    fill_in "Organisation", with: @membership_type.organisation_id
    fill_in "Price", with: @membership_type.price
    click_on "Update Membership type"

    assert_text "Membership type was successfully updated"
    click_on "Back"
  end

  test "should destroy Membership type" do
    visit membership_type_url(@membership_type)
    click_on "Destroy this membership type", match: :first

    assert_text "Membership type was successfully destroyed"
  end
end
