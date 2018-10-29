# frozen_string_literal: true

require 'test_helper'

class ContentControllerTest < ActionDispatch::IntegrationTest
  test 'should get chocolate_cake' do
    get content_chocolate_cake_url
    assert_response :success
  end

  test 'should get baked_potatoes' do
    get content_baked_potatoes_url
    assert_response :success
  end
end
