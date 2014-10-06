SetTimer, UpdateUI, 6000

Gui, Color, gray
Gui, Font, s25 white, Segoe UI Light
Gui, Margin, 5, 5

Gui, Add, Text, Section cWhite, % "IT IS"
Gui, Add, Text, ys vtxtMinuteIdHalf, % "HALF"
Gui, Add, Text, ys vtxtMinuteId, % "TEN"

Gui, Add, Text, xm Section vtxtMinuteId, % "QUARTER"
Gui, Add, Text, ys vtxtMinuteId, % "TWENTY"

Gui, Add, Text, xm Section vtxtMinuteId, % "FIVE"
Gui, Add, Text, ys vtxtMinuteId, % "MINUTES"
Gui, Add, Text, ys vtxtMinuteId, % "TO"

Gui, Add, Text, xm Section vtxtMinuteId, % "PAST"
Gui, Add, Text, ys vtxtHour, % "ONE"
Gui, Add, Text, ys vtxtHour, % "THREE"

Gui, Add, Text, xm Section vtxtHour, % "TWO"
Gui, Add, Text, ys vtxtHour, % "FOUR"
Gui, Add, Text, ys vtxtHour, % "FIVE"

Gui, Add, Text, xm Section vtxtHour, % "SIX"
Gui, Add, Text, ys vtxtHour, % "SEVEN"
Gui, Add, Text, ys vtxtHour, % "EIGHT"

Gui, Add, Text, xm Section vtxtHour, % "NINE"
Gui, Add, Text, ys vtxtHour, % "TEN"
Gui, Add, Text, ys vtxtHour, % "ELEVEN"

Gui, Add, Text, xm Section vtxtHour, % "TWELVE"
Gui, Add, Text, ys vtxtOClock, % "O'CLOCK"
Gui, Show, AutoSize Center, Word Clock
return

UpdateUI:
{
	; Reset all colors back to black
	Gui, Font, Black
	GuiControl, Font, txtMinuteIdHalf
	GuiControl, Font, txtMinuteIdFive
	GuiControl, Font, txtMinuteIdQuarter
	
	; Set correct words to white
	Gui, Font, cWhite
	if (A_Min == 30)
		GuiControl, Font, txtMinuteIdHalf
	else if (A_Min == 05 || A_Min == 55)
		GuiControl, Font, txtMinuteIdFive
	else if (A_Min == 15 || A_Min == 45)
		GuiControl, Font, txtMinuteIdQuarter
	else if (A_Min == 20 || A_Min == 40)
		GuiControl, Font, txtMinuteIdTwenty
	return
}

GuiClose:
{
	ExitApp
}