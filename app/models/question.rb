class Question < ActiveRecord::Base
  belongs_to :topic

  # Validation Rules
  validates :title, presence: true, length: {minimum: 20}
  validates :answer, presence: true, inclusion: { in: %w{a b c d} }
  validates :topic_id, presence: true
end
