Given /^I have tasks? titled (.*)$/ do |tasks|
  tasks.split(', ').each do |title|
    Task.create!(:title => title.gsub!(/^"(.*?)"$/,'\1'))
  end
end

Given /^I have finished tasks? titled (.*)$/ do |tasks|
  tasks.split(', ').each do |title|
    Task.create!(:title => title.gsub!(/^"(.*?)"$/,'\1'), :finished => Time.now)
  end
end

Given /^I have no tasks$/ do
  Task.delete_all
end

Then /^I should have ([0-9]+) tasks?$/ do |count|
  Task.count.should == count.to_i
end

When /^I finish task "(.*)"$/ do |task_name|
  within("//div[@class='task'][h2='#{task_name}']") do
    click_link "Finish"
  end
end
