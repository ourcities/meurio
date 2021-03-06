class Activity < ActiveRecord::Base
  belongs_to :user
  belongs_to :activable, polymorphic: true
  has_one :mobilization, primary_key: :hashtag, foreign_key: :hashtag
end
