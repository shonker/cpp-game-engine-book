---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by captain.
--- DateTime: 5/26/2022 12:03 AM
---

require("lua_extension")

--- 音频引擎
Audio={

}

--- 初始化fmod
function Audio:Init()
    Cpp.Audio.Init()
end

--- 刷帧
function Audio:Update()
    Cpp.Audio.Update()
end