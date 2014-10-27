class Problem < ActiveRecord::Base
  validates :name, :link, :description, :hashtag, presence: true
  validates :uid, uniqueness: true
  belongs_to :mobilization, foreign_key: :hashtag, primary_key: :hashtag
  belongs_to :user
  has_many :ideas

  def external_url
    "#{ENV['IMAGINE_HOST']}/problems/#{self.uid}"
  end
end
