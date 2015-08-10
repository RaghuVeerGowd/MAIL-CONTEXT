require 'test_helper'

class MailContextsControllerTest < ActionController::TestCase
  setup do
    @mail_context = mail_contexts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mail_contexts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mail_context" do
    assert_difference('MailContext.count') do
      post :create, mail_context: { email: @mail_context.email, ends_at: @mail_context.ends_at, message_body: @mail_context.message_body, starts_at: @mail_context.starts_at, time_part: @mail_context.time_part, user_id: @mail_context.user_id }
    end

    assert_redirected_to mail_context_path(assigns(:mail_context))
  end

  test "should show mail_context" do
    get :show, id: @mail_context
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mail_context
    assert_response :success
  end

  test "should update mail_context" do
    patch :update, id: @mail_context, mail_context: { email: @mail_context.email, ends_at: @mail_context.ends_at, message_body: @mail_context.message_body, starts_at: @mail_context.starts_at, time_part: @mail_context.time_part, user_id: @mail_context.user_id }
    assert_redirected_to mail_context_path(assigns(:mail_context))
  end

  test "should destroy mail_context" do
    assert_difference('MailContext.count', -1) do
      delete :destroy, id: @mail_context
    end

    assert_redirected_to mail_contexts_path
  end
end
