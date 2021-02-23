# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test 'should get new' do
    get new_user_url
    assert_response :success
  end

  test 'should create user' do
    post users_url, params: { user: { username: '@user.username', password: '@user.password_digest', password_confirmation: '@user.password_digest' } }

    assert_redirected_to game_input_url
  end
end
