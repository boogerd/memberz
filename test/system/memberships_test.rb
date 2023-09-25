require "application_system_test_case"

class MembershipsTest < ApplicationSystemTestCase
  setup do
    @membership = memberships(:one)
  end

  test "visiting the index" do
    visit memberships_url
    assert_selector "h1", text: "Memberships"
  end

  test "should create membership" do
    visit memberships_url
    click_on "New membership"

    fill_in "Description", with: @membership.description
    fill_in "End date", with: @membership.end_date
    fill_in "Member", with: @membership.member_id
    fill_in "Membership type", with: @membership.membership_type_id
    fill_in "Renewal date", with: @membership.renewal_date
    fill_in "Start date", with: @membership.start_date
    fill_in "Status", with: @membership.status
    click_on "Create Membership"

    assert_text "Membership was successfully created"
    click_on "Back"
  end

  test "should update Membership" do
    visit membership_url(@membership)
    click_on "Edit this membership", match: :first

    fill_in "Description", with: @membership.description
    fill_in "End date", with: @membership.end_date
    fill_in "Member", with: @membership.member_id
    fill_in "Membership type", with: @membership.membership_type_id
    fill_in "Renewal date", with: @membership.renewal_date
    fill_in "Start date", with: @membership.start_date
    fill_in "Status", with: @membership.status
    click_on "Update Membership"

    assert_text "Membership was successfully updated"
    click_on "Back"
  end

  test "should destroy Membership" do
    visit membership_url(@membership)
    click_on "Destroy this membership", match: :first

    assert_text "Membership was successfully destroyed"
  end
end
