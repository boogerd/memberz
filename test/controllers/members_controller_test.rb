require "test_helper"

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get members_url
    assert_response :success
  end

  test "should get new" do
    get new_member_url
    assert_response :success
  end

  test "should create member" do
    assert_difference("Member.count") do
      post members_url, params: { member: { birtday: @member.birtday, email: @member.email, end_date: @member.end_date, first_name: @member.first_name, last_name: @member.last_name, mobile: @member.mobile, organisation_id: @member.organisation_id, phone: @member.phone, salutation: @member.salutation, start_date: @member.start_date } }
    end

    assert_redirected_to member_url(Member.last)
  end

  test "should show member" do
    get member_url(@member)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_url(@member)
    assert_response :success
  end

  test "should update member" do
    patch member_url(@member), params: { member: { birtday: @member.birtday, email: @member.email, end_date: @member.end_date, first_name: @member.first_name, last_name: @member.last_name, mobile: @member.mobile, organisation_id: @member.organisation_id, phone: @member.phone, salutation: @member.salutation, start_date: @member.start_date } }
    assert_redirected_to member_url(@member)
  end

  test "should destroy member" do
    assert_difference("Member.count", -1) do
      delete member_url(@member)
    end

    assert_redirected_to members_url
  end
end
