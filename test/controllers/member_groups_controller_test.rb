require "test_helper"

class MemberGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_group = member_groups(:one)
  end

  test "should get index" do
    get member_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_member_group_url
    assert_response :success
  end

  test "should create member_group" do
    assert_difference("MemberGroup.count") do
      post member_groups_url, params: { member_group: { description: @member_group.description, name: @member_group.name, organisation_id: @member_group.organisation_id } }
    end

    assert_redirected_to member_group_url(MemberGroup.last)
  end

  test "should show member_group" do
    get member_group_url(@member_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_group_url(@member_group)
    assert_response :success
  end

  test "should update member_group" do
    patch member_group_url(@member_group), params: { member_group: { description: @member_group.description, name: @member_group.name, organisation_id: @member_group.organisation_id } }
    assert_redirected_to member_group_url(@member_group)
  end

  test "should destroy member_group" do
    assert_difference("MemberGroup.count", -1) do
      delete member_group_url(@member_group)
    end

    assert_redirected_to member_groups_url
  end
end
