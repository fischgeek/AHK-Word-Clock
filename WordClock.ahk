SetTimer, UpdateUI, 6000

Gui, Color, gray
Gui, Font, s25 white, Segoe UI Light
Gui, Margin, 5, 5

Gui, Add, Text, Section cWhite, % "IT IS"
Gui, Add, Text, ys vtxtMinuteIdHalf, % "HALF"
Gui, Add, Text, ys vtxtMinuteIdTen, % "TEN"

Gui, Add, Text, xm Section vtxtMinuteIdQuarter, % "QUARTER"
Gui, Add, Text, ys vtxtMinuteIdTwenty, % "TWENTY"

Gui, Add, Text, xm Section vtxtMinuteIdFive, % "FIVE"
Gui, Add, Text, ys vtxtMinuteIdMinutes, % "MINUTES"
Gui, Add, Text, ys vtxtMinuteIdTo, % "TO"

Gui, Add, Text, xm Section vtxtMinuteIdPast, % "PAST"
Gui, Add, Text, ys vtxtHourOne, % "ONE"
Gui, Add, Text, ys vtxtHourThree, % "THREE"

Gui, Add, Text, xm Section vtxtHourTwo, % "TWO"
Gui, Add, Text, ys vtxtHourFour, % "FOUR"
Gui, Add, Text, ys vtxtHourFive, % "FIVE"

Gui, Add, Text, xm Section vtxtHourSix, % "SIX"
Gui, Add, Text, ys vtxtHourSeven, % "SEVEN"
Gui, Add, Text, ys vtxtHourEight, % "EIGHT"

Gui, Add, Text, xm Section vtxtHourNine, % "NINE"
Gui, Add, Text, ys vtxtHourTen, % "TEN"
Gui, Add, Text, ys vtxtHourEleven, % "ELEVEN"

Gui, Add, Text, xm Section vtxtHourTwelve, % "TWELVE"
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
	else if (A_Min == 10 || A_Min == 50)
		GuiControl, Font, txtMinuteIdTen
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