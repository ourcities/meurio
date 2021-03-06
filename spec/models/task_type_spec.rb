require 'spec_helper'

describe TaskType do
  it { should have_and_belong_to_many :badges }
  it { should validate_presence_of :name }
  it { should validate_presence_of :points }
  it { should validate_presence_of :category_id }
  it { should validate_presence_of :mode }
end
