require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @q = Question.new
    @q.title = 'a' * 25
    @q.topic_id = 25
    @q.answer = 'a'
  end

  test "should fail with too little title" do
    @q.title = 'b' * 15
    assert_not @q.save
  end

  test "should fail with no topic id" do
    @q.topic_id = nil
    assert_not @q.save
  end

  test "should fail with invalid answer option" do
    @q.answer = nil
    assert_not @q.save

    @q.answer = 'f'
    assert_not @q.save
  end

  test "should pass with proper info" do
    #Setup method already has a valid question object, no assigning values again
    assert @q.save
  end

end
