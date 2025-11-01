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
test "should update goal" do
  goal = Goal.create(title: "古いタイトル", description: "古い説明", deadline: Date.today)

  patch goal_url(goal), params: {
    goal: {
      title: "新しいタイトル",
      description: "新しい説明",
      deadline: Date.tomorrow
    }
  }

  assert_redirected_to goals_path

  goal.reload
  assert_equal "新しいタイトル", goal.title
  assert_equal "新しい説明", goal.description
  assert_equal Date.tomorrow, goal.deadline
end
test "should destroy goal" do
  goal = Goal.create(title: "削除される目標", description: "説明", deadline: Date.today)

  assert_difference("Goal.count", -1) do
    delete goal_url(goal)
  end

  assert_redirected_to goals_path
end
end
