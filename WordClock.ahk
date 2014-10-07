SetTimer, UpdateUI, 1000

Gui, Color, gray
Gui, Font, s25 white, Segoe UI Light
Gui, Margin, 6, 5

Gui, Add, Text, Section vtxtItIs, % "IT IS"
Gui, Add, Text, ys vtxtA, % "A"
Gui, Add, Text, ys vtxtMinuteIdHalf, % "HALF"
Gui, Add, Text, ys vtxtMinuteIdTen, % "TEN"

Gui, Add, Text, xm Section vtxtMinuteIdQuarter, % "QUARTER"
Gui, Add, Text, ys vtxtMinuteIdTwenty, % "TWENTY"

Gui, Add, Text, xm Section vtxtMinuteIdFive, % "FIVE"
Gui, Add, Text, ys vtxtMinuteIdMinutes, % "MINUTES"
Gui, Add, Text, ys vtxtMinuteIdTo, % "TO"

Gui, Add, Text, xm Section vtxtMinuteIdPast, % "PAST"
Gui, Add, Text, ys vtxtHour01, % "ONE"
Gui, Add, Text, ys vtxtHour03, % "THREE"

Gui, Add, Text, xm Section vtxtHour02, % "TWO"
Gui, Add, Text, ys vtxtHour04, % "FOUR"
Gui, Add, Text, ys vtxtHour05, % "FIVE"

Gui, Add, Text, xm Section vtxtHour06, % "SIX"
Gui, Add, Text, ys vtxtHour07, % "SEVEN"
Gui, Add, Text, ys vtxtHour08, % "EIGHT"

Gui, Add, Text, xm Section vtxtHour09, % "NINE"
Gui, Add, Text, ys vtxtHour10, % "TEN"
Gui, Add, Text, ys vtxtHour11, % "ELEVEN"

Gui, Add, Text, xm Section vtxtHour12, % "TWELVE"
Gui, Add, Text, ys vtxtOClock, % "O'CLOCK"
Gui, Show, AutoSize Center, Word Clock
return

UpdateUI:
{
	; Reset all colors back to black
	Gui, Font, Black
	WinGet, controls, ControlList, Word Clock
	Loop, Parse, controls, `n
		GuiControl, Font, %A_LoopField%
	
	; Set correct words to white
	Gui, Font, cWhite
	GuiControl, Font, txtItIs
	if A_Min between 00 and 04
		GuiControl, Font, txtOClock
	else if A_Min between 05 and 09
	{
		GuiControl, Font, txtMinuteIdFive
		GuiControl, Font, txtMinuteIdMinutes
		GuiControl, Font, txtMinuteIdPast
	}
	else if A_Min between 10 and 14
	{
		GuiControl, Font, txtMinuteIdTen
		GuiControl, Font, txtMinuteIdMinutes
		GuiControl, Font, txtMinuteIdPast
	}
	else if A_Min between 15 and 19
	{
		GuiControl, Font, txtA
		GuiControl, Font, txtMinuteIdQuarter
		GuiControl, Font, txtMinuteIdPast
	}
	else if A_Min between 20 and 24
	{
		GuiControl, Font, txtMinuteIdTwenty
		GuiControl, Font, txtMinuteIdMinutes
		GuiControl, Font, txtMinuteIdPast
	}
	else if A_Min between 25 and 29
	{
		GuiControl, Font, txtMinuteIdTwenty
		GuiControl, Font, txtMinuteIdFive
		GuiControl, Font, txtMinuteIdMinutes
		GuiControl, Font, txtMinuteIdPast
	}
	else if A_Min between 30 and 34
	{
		GuiControl, Font, txtMinuteIdHalf
		GuiControl, Font, txtMinuteIdPast
	}
	else if A_Min between 35 and 39
	{
		GuiControl, Font, txtMinuteIdTwenty
		GuiControl, Font, txtMinuteIdFive
		GuiControl, Font, txtMinuteIdMinutes
		GuiControl, Font, txtMinuteIdTo
	}
	else if A_Min between 40 and 44
	{
		GuiControl, Font, txtMinuteIdTwenty
		GuiControl, Font, txtMinuteIdMinutes
		GuiControl, Font, txtMinuteIdTo
	}
	else if A_Min between 45 and 49
	{
		GuiControl, Font, txtA
		GuiControl, Font, txtMinuteIdQuarter
		GuiControl, Font, txtMinuteIdTo
	}
	else if A_Min between 50 and 55
	{
		GuiControl, Font, txtMinuteIdTen
		GuiControl, Font, txtMinuteIdMinutes
		GuiControl, Font, txtMinuteIdPast
	}
	else if A_Min between 55 and 59
	{
		GuiControl, Font, txtMinuteIdFive
		GuiControl, Font, txtMinuteIdMinutes
		GuiControl, Font, txtMinuteIdTo
	}
	
	if A_Min between 01 and 34
		GuiControl, Font, txtHour%A_Hour%
	else 
	{
		nextHour := (A_Hour+1)-12
		nextHour := nextHour < 10 ? 0 nextHour : nextHour
		GuiControl, Font, % "txtHour" nextHour
	}
	return
}

GuiClose:
{
	ExitApp
}