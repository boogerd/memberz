require "application_system_test_case"

class MemberGroupsTest < ApplicationSystemTestCase
  setup do
    @member_group = member_groups(:one)
  end

  test "visiting the index" do
    visit member_groups_url
    assert_selector "h1", text: "Member groups"
  end

  test "should create member group" do
    visit member_groups_url
    click_on "New member group"

    fill_in "Description", with: @member_group.description
    fill_in "Name", with: @member_group.name
    fill_in "Organisation", with: @member_group.organisation_id
    click_on "Create Member group"

    assert_text "Member group was successfully created"
    click_on "Back"
  end

  test "should update Member group" do
    visit member_group_url(@member_group)
    click_on "Edit this member group", match: :first

    fill_in "Description", with: @member_group.description
    fill_in "Name", with: @member_group.name
    fill_in "Organisation", with: @member_group.organisation_id
    click_on "Update Member group"

    assert_text "Member group was successfully updated"
    click_on "Back"
  end

  test "should destroy Member group" do
    visit member_group_url(@member_group)
    click_on "Destroy this member group", match: :first

    assert_text "Member group was successfully destroyed"
  end
end
