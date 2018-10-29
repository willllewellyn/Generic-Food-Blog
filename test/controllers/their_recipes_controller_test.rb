require 'test_helper'

class TheirRecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get chocolate_cake" do
    get their_recipes_chocolate_cake_url
    assert_response :success
  end

  test "should get baked_potatoes" do
    get their_recipes_baked_potatoes_url
    assert_response :success
  end

end
