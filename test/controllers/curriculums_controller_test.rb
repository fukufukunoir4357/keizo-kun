require 'test_helper'

class CurriculumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get curriculums_index_url
    assert_response :success
  end

end
