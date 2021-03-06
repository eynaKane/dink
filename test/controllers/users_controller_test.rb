require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test 'should get index' do
    get users_url
    assert_response :success
  end

  test 'should get new' do
    get new_user_url
    assert_response :success
  end

  test 'should create user' do
    password = Faker::Internet.password

    assert_difference('User.count') do
      post users_url, params: {
        user: {
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          username: Faker::Internet.user_name,
          email: Faker::Internet.email,
          password: password,
          password_confirmation: password
        }
      }
    end

    assert_redirected_to user_url(User.last)
  end

  test 'should show user' do
    get user_url(@user)
    assert_response :success
  end

  test 'should get edit' do
    get edit_user_url(@user)
    assert_response :success
  end

  test 'should update user' do
    password = Faker::Internet.password

    patch user_url(@user), params: {
      user: {
        first_name: @user.first_name,
        last_name: @user.last_name,
        old_password: 'Password',
        password: password,
        password_confirmation: password
      }
    }

    assert_redirected_to user_url(@user)
  end

  test 'should destroy user' do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
