class Topic < ActiveRecord::Base
  belongs_to :user
  belongs_to :prerequisites_topic
end
