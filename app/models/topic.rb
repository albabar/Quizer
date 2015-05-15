class Topic < ActiveRecord::Base
  belongs_to :user

  #Setup Prerequisites Topic relation
  has_many :child, class_name: "Topic", foreign_key: "prerequisites_topic_id"
  belongs_to :prerequisites_topic, class_name: "Topic"

  has_many :questions
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true

  #Validation rules
  validates :title, presence: true

  #Set a default passmark
  after_find do
    self.passmark ||= 60
  end
end
