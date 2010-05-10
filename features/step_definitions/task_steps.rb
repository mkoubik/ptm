Given /^I have tasks titled (.*)$/ do |tasks|
  tasks.split(', ').each do |title|
    Task.create!(:title => title)
  end
end

Given /^I have no tasks$/ do
  Task.delete_all
end

Then /^I should have ([0-9]+) tasks?$/ do |count|
  Task.count.should == count.to_i
end
