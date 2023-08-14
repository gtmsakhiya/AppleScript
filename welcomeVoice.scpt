// This is welcome voice applescript.
// 
// created by Gautam Sakhiya 14/08/23.

-- Get the current time in hours (24-hour format)
set currentHour to (current date)'s hours

-- Determine the time period
if currentHour ≥ 5 and currentHour < 12 then
	set timePeriod to "morning"
else if currentHour ≥ 12 and currentHour < 18 then
	set timePeriod to "afternoon"
else
	set timePeriod to "evening"
end if

-- Replace "Hello, I am your AI assistant." with the text you want to speak
set textToSpeak to "Hi, I am siri. Welcome to NTech Infoway. Good " & timePeriod & "!"


-- Speak the text using the specified voice
say textToSpeak
