function OnEvent(event, arg)
	OutputLogMessage("event = %s, arg = %s\n", event, arg);
	local count_ = 0
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 6) then
		repeat
			if IsMouseButtonPressed(3) then break end -- RMB
			count_ = count_ + 1
			MoveMouseToVirtual(24000, 40000)
			Sleep(100)
		until count_ > 100
	end
end