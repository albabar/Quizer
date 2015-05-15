require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should fail with no topic title" do
    topic = Topic.new
    assert_not topic.save
  end

  test "should pass with a topic title" do
    topic = Topic.new
    topic.title = 'a' * 20
    assert topic.save
  end
end
