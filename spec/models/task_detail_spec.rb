require 'rails_helper'

RSpec.describe TaskDetail, :type => :model do
  let(:task) { Task.create }

  it "is valid with valid attributes" do
    expect(TaskDetail.new(task: task)).to be_valid
  end
end