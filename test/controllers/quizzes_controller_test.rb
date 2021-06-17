require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get quizzes_home_url
    assert_response :success
  end

  test "should get quizz" do
    get quizzes_quizz_url
    assert_response :success
  end

end
