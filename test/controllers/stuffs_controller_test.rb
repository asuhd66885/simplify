require 'test_helper'

class StuffsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get stuffs_index_url
    assert_response :success
  end
end
