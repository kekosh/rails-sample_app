require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  
  #rootのテスト(rootにhomeを設定した場合)
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end
  
  #homeページのテスト(root設定していない場合)
  #test "should get home" do
  #  get static_pages_home_url
  #  assert_response :success
  #  assert_select "title", "Home | #{@base_title}"
  #end
  
  #helpページのテスト
  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
  
  #aboutページのテスト
  test "shoud get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
  #contactページのテスト
  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end
