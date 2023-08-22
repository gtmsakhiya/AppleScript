-- This is welcome voice applescript. 
-- created by Gautam Sakhiya 14/08/23.

-- Get the current time in hours (24-hour format)
set currentTime to current date
set currentHour to hours of currentTime
set currentMinutes to minutes of currentTime
set currentSeconds to seconds of currentTime
set ampm to "AM"

-- Determine the time period
if currentHour ≥ 5 and currentHour < 12 then
	set timePeriod to "morning"
else if currentHour ≥ 12 and currentHour < 18 then
	set timePeriod to "afternoon"
else
	set timePeriod to "evening"
end if

--Convert 24 to 12-hour formate
if currentHour ≥ 12 then
	set ampm to "PM"
	if currentHour > 12 then
		set currentHour to currentHour - 12
	end if
end if

set textToSpeak to "Time is " & currentHour & ":" & currentMinutes & ":" & currentSeconds & " " & ampm

-- Replace "Hello, I am your AI assistant." with the text you want to speak
set textToSpeak to "Hi Gautam Sakhiya, I am siri. Welcome to my world. Good " & timePeriod & ". " & textToSpeak


-- Speak the text using the specified voice
say textToSpeak
