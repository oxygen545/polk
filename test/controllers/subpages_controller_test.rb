require 'test_helper'

class SubpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subpage = subpages(:one)
  end

  test "should get index" do
    get subpages_url
    assert_response :success
  end

  test "should get new" do
    get new_subpage_url
    assert_response :success
  end

  test "should create subpage" do
    assert_difference('Subpage.count') do
      post subpages_url, params: { subpage: { body: @subpage.body, heading: @subpage.heading, link: @subpage.link, page_id: @subpage.page_id, subheading: @subpage.subheading, subtitle: @subpage.subtitle, title: @subpage.title, user_id: @subpage.user_id, weight: @subpage.weight } }
    end

    assert_redirected_to subpage_url(Subpage.last)
  end

  test "should show subpage" do
    get subpage_url(@subpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_subpage_url(@subpage)
    assert_response :success
  end

  test "should update subpage" do
    patch subpage_url(@subpage), params: { subpage: { body: @subpage.body, heading: @subpage.heading, link: @subpage.link, page_id: @subpage.page_id, subheading: @subpage.subheading, subtitle: @subpage.subtitle, title: @subpage.title, user_id: @subpage.user_id, weight: @subpage.weight } }
    assert_redirected_to subpage_url(@subpage)
  end

  test "should destroy subpage" do
    assert_difference('Subpage.count', -1) do
      delete subpage_url(@subpage)
    end

    assert_redirected_to subpages_url
  end
end
