# Examples

Простая покупка в таркове
```lua
local flag

function OnEvent(event, arg)
	OutputLogMessage("event = %s, arg = %s\n", event, arg);
	if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
		MoveMouseTo(60951, 8198)
		Sleep(10)
		PressAndReleaseMouseButton(1)
		Sleep(30)
		MoveMouseTo(58748, 11750)
	end

	if (event == "MOUSE_BUTTON_PRESSED" and arg == 8) then
		SetBacklightColor(255, 0, 0);
		PressAndReleaseMouseButton(1)
		Sleep(50)
		PressAndReleaseKey("y")
	end

	if (event == "MOUSE_BUTTON_PRESSED" and arg == 6) then
		SetBacklightColor(0, 255, 0);
		x, y = GetMousePosition();
		OutputLogMessage("Mouse is at %d, %d\n", x, y);
	end
end
```
---
Обработка нажатия с кнопкой CTRL
```lua
 if (event == "G_PRESSED" and arg == 21 and IsModifierPressed("ctrl")) then
  ColorBreathe()
 end
```
---
Прост пример из гитхаба
[LGS_script_template.lua](examples/LGS_script_template.lua)