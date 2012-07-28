Given /^I have colony names (.+)$/ do |names|
  names.split(', ').each do |name|
    Colony.create!( :name => name)
  end
end


Given /^I have no colony$/ do
   Colony.delete_all
end

Then /^I should have ([0-9]+) colony$/ do |count|
  Colony.count.should == count.to_i
end