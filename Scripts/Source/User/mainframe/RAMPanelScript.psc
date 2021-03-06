Scriptname mainframe:RAMPanelScript extends mainframe:PanelBaseScript

; using a bunch of arrays is ugly, but it works
; TODO: see how GetPropertyValue compares in terms of performance
int[] Block0
int[] Block1
int[] Block2
int[] Block3
int[] Block4
int[] Block5
int[] Block6
int[] Block7

Event OnInit()
	Block0 = new int[128]
	Block1 = new int[128]
	Block2 = new int[128]
	Block3 = new int[128]
	Block4 = new int[128]
	Block5 = new int[128]
	Block6 = new int[128]
	Block7 = new int[128]
EndEvent

int Function Read(int address)
	int BlockNumber = Math.floor(address / 128)
	int BlockAddress = address % 128
	If(BlockNumber == 0)
		Return Block0[BlockAddress]
	ElseIf (BlockNumber == 1)
		Return Block1[BlockAddress]
	ElseIf (BlockNumber == 2)
		Return Block2[BlockAddress]
	ElseIf (BlockNumber == 3)
		Return Block3[BlockAddress]
	ElseIf (BlockNumber == 4)
		Return Block4[BlockAddress]
	ElseIf (BlockNumber == 5)
		Return Block5[BlockAddress]
	ElseIf (BlockNumber == 6)
		Return Block6[BlockAddress]
	ElseIf (BlockNumber == 7)
		Return Block7[BlockAddress]
	EndIf
EndFunction

Function Write(int address, int value)
	int BlockNumber = Math.floor(address / 128)
	int BlockAddress = address % 128
	If(BlockNumber == 0)
		Block0[BlockAddress] = value
	ElseIf (BlockNumber == 1)
		Block1[BlockAddress] = value
	ElseIf (BlockNumber == 2)
		Block2[BlockAddress] = value
	ElseIf (BlockNumber == 3)
		Block3[BlockAddress] = value
	ElseIf (BlockNumber == 4)
		Block4[BlockAddress] = value
	ElseIf (BlockNumber == 5)
		Block5[BlockAddress] = value
	ElseIf (BlockNumber == 6)
		Block6[BlockAddress] = value
	ElseIf (BlockNumber == 7)
		Block7[BlockAddress] = value
	EndIf
EndFunction