require 'test_helper'

class GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get genres_index_url
    assert_response :success
  end

  test "should get browse" do
    get genres_browse_url
    assert_response :success
  end

end
