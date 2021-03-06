require 'spec_helper'

describe FacebookPost do
  it { should validate_presence_of :hashtag }
  it { should validate_presence_of :username }
  it { should validate_presence_of :text }
  it { should validate_presence_of :published_at }
  it { should validate_presence_of :uid }
  it { should validate_uniqueness_of :uid }
end
