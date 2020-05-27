--[[
Documentation for New lumbsmasher UILIB
]]--

-- lets start by creating a GUI as a whole so what you would need to  do to make the first instance would be
local main = library:Create('Name Here')

-- now lets start by creating a GUI section
local section = main:CreateTab('Name Here')

-- now lets make buttons and such for the gui buttons are done by this
section:CreateButton('Name Here',function()
  --  what to execute here
 end)

-- TextBox
section:CreateTextBox('Name Here',function(varible/arg)
 -- what to execute here    
end)

-- Toggle
section:CreateToggle('Name Here','Description here',function(varible/arg)
    -- boolean function here
end)

-- Dropdown
local drop = section:CreateDropwdown('Name Here')

-- add to dropdown  by doing 
drop:Addbutton('Name Here',function()
  -- same as button
end)
