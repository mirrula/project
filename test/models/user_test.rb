# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should add once' do
    username = Faker::Lorem.word
    password = Faker::Lorem.word

    res_1 = User.create(username: username, password: password, password_confirmation: password)
    assert(res_1.save == true)

    res_2 = User.create(username: username, password: password, password_confirmation: password)
    assert(res_2.save == false)
  end
end
