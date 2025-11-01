require "test_helper"

class GoalsControllerTest < ActionDispatch::IntegrationTest
test "should get index" do
  get goals_url  # ← GoalsController の index アクションを呼ぶ
  assert_response :success
end

test "should get show" do
  goal = Goal.create(title: "Test Goal", description: "Test Description", deadline: Date.today)
  get goal_url(goal)  # ← GoalsController の show アクションを呼ぶ
  assert_response :success
end

test "should get new" do
  get new_goal_url  # ← GoalsController の new アクションを呼ぶ
  assert_response :success
end

test "should get edit" do
  goal = Goal.create(title: "Test Goal", description: "Test Description", deadline: Date.today)
  get edit_goal_url(goal)  # ← GoalsController の edit アクションを呼ぶ
  assert_response :success
end
end
