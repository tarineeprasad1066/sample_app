require 'test_helper'
  class StaticPagesControllerTest <
        ActionDispatch::IntegrationTest

# test "should get about" do
#     get FILL_IN
#  assert_response FILL_IN
# end

test "should get home" do
   get root_path
  assert_response :success
  assert_select "title", "Ruby on Rails Tutorial MicroBlogging"
end

test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial
MicroBlogging App"
end

test "should get about" do
     get about_path
     assert_response :success
     assert_select "title", "About | Ruby on Rails Tutorial
MicroBlogging App"
end

  test "should get contact" do
       get contact_path
       assert_response :success
       assert_select "title", "Contact | Ruby on Rails Tutorial
MicroBlogging App"
end
end