require 'spec_helper'

describe Comment do
  it { should belong_to(:task) }
  it { should validate_presence_of(:task) }
  it { should validate_presence_of(:body) }
end
