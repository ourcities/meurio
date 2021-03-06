class Tweet < ActiveRecord::Base
  validates :username, :text, :hashtag, :published_at, :uid, presence: true
  validates :uid, uniqueness: true

  auto_html_for :text do
    link target: :blank, rel: :nofollow
    hashtag source: :twitter
  end
end
