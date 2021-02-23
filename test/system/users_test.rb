# frozen_string_literal: true

require 'application_system_test_case'

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test 'visiting the index' do
    visit users_url
    assert_selector 'h1', text: I18n.t(:authorization)
  end

  test 'creating a User' do
    visit users_url
    click_on 'Зарегистрироваться'

    fill_in 'user[username]', with: Faker::Lorem.word
    fill_in 'user[password]', with: pass = Faker::Lorem.word
    fill_in 'user[password_confirmation]', with: pass

    click_on 'Зарегистрироваться'

    assert_text 'Нажмите Р чтобы начать игру'
  end
end
