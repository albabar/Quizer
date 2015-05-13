class Topic < ActiveRecord::Base
  belongs_to :user

  has_many :child, class_name: "Topic", foreign_key: "prerequisites_topic_id"
  belongs_to :prerequisites_topic, class_name: "Topic"

  has_many :question

  #Validation rules
  validates :title, presence: true

  #Set a default passmark
  after_find do
    self.passmark ||= 60
  end
end
