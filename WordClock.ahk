SetTimer, UpdateUI, 6000

Gui, Color, gray
Gui, Font, s25 white, Segoe UI Light
Gui, Margin, 5, 5

Gui, Add, Text, Section cWhite, % "IT IS"
Gui, Add, Text, ys, % "HALF"
Gui, Add, Text, ys, % "TEN"

Gui, Add, Text, xm Section, % "QUARTER"
Gui, Add, Text, ys, % "TWENTY"

Gui, Add, Text, xm Section, % "FIVE"
Gui, Add, Text, ys, % "MINUTES"
Gui, Add, Text, ys, % "TO"

Gui, Add, Text, xm Section, % "PAST"
Gui, Add, Text, ys , % "ONE"
Gui, Add, Text, ys, % "THREE"

Gui, Add, Text, xm Section, % "TWO"
Gui, Add, Text, ys, % "FOUR"
Gui, Add, Text, ys, % "FIVE"

Gui, Add, Text, xm Section, % "SIX"
Gui, Add, Text, ys, % "SEVEN"
Gui, Add, Text, ys, % "EIGHT"

Gui, Add, Text, xm Section, % "NINE"
Gui, Add, Text, ys, % "TEN"
Gui, Add, Text, ys, % "ELEVEN"

Gui, Add, Text, xm Section, % "TWELVE"
Gui, Add, Text, ys, % "O'CLOCK"
Gui, Show, AutoSize Center, Word Clock
return

UpdateUI:
{
	return
}

GuiClose:
{
	ExitApp
}