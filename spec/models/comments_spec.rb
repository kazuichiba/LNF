require 'spec_helper'


describe 'Comment' do
  let(:task) { FactoryGirl.create(:task) }

  it 'adds a comment' do
    previous_count = Comment.count
    task.comments.create(body: 'DO it!')
    expect(Comment.count).to eql(previous_count + 1)
  end 


  it "is valid Comment" do
    comment = task.comments.build(body: 'valid comment')
    expect(comment).to be_valid
  end

  it "it is not valid without comment" do
    comment = task.comments.build(body: '')
    expect(comment).to be_invalid
  end
end