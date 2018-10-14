# frozen_string_literal: true

require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test 'should get contacts' do
    get about_contacts_url
    assert_response :success
  end

  test 'should get other_contacts' do
    get about_other_contacts_url
    assert_response :success
  end

  test 'should get health_and_safety' do
    get about_health_and_safety_url
    assert_response :success
  end
end
