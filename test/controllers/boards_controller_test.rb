require 'test_helper'

class BoardsControllerTest < ActionController::TestCase
  setup do
    @board = boards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create board" do
    assert_difference('Board.count') do
      post :create, board: { activity_id: @board.activity_id, brand_id: @board.brand_id, campaign_id: @board.campaign_id, country_id: @board.country_id, date_time: @board.date_time, end_time: @board.end_time, sum_time: @board.sum_time }
    end

    assert_redirected_to board_path(assigns(:board))
  end

  test "should show board" do
    get :show, id: @board
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @board
    assert_response :success
  end

  test "should update board" do
    patch :update, id: @board, board: { activity_id: @board.activity_id, brand_id: @board.brand_id, campaign_id: @board.campaign_id, country_id: @board.country_id, date_time: @board.date_time, end_time: @board.end_time, sum_time: @board.sum_time }
    assert_redirected_to board_path(assigns(:board))
  end

  test "should destroy board" do
    assert_difference('Board.count', -1) do
      delete :destroy, id: @board
    end

    assert_redirected_to boards_path
  end
end
