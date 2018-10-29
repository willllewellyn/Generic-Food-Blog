# frozen_string_literal: true

require 'test_helper'

class LegalControllerTest < ActionDispatch::IntegrationTest
  test 'should get privacy_policy' do
    get legal_privacy_policy_url
    assert_response :success
  end

  test 'should get terms_of_us' do
    get legal_terms_of_us_url
    assert_response :success
  end
end
