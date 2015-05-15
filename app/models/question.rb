class Question < ActiveRecord::Base
  belongs_to :topic

  # Validation Rules
  # validates :title, presence: true, allow_blank: true
  # validates :answer, presence: true, inclusion: { in: %w{a b c d} }
  # validates :answer, inclusion: { in: %w{a b c d} }
  # validates :topic_id, presence: true
end
