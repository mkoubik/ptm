require 'spec_helper'

describe Task do
  it "should be unfinished by default" do
    task = Task.new(:title => "An unfinished task")
    task.should_not be_finished
  end

  it "should be finishable" do
    task = Task.new(:title => "A task")
    task.finish
    task.should be_finished
  end
end
