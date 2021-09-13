---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by captain.
--- DateTime: 2021/9/14 0:45
---

game_object_list_={}--存储所有的GameObject。

GameObject=class()

function GameObject:ctor(name)
    if name then
        self.name_=name
    else
        self.name_="no name"
    end
    self.component_type_instance_map_={}
    self.layer_=1--将物体分不同的层，用于相机分层、物理碰撞分层等。

    table.insert(game_object_list_,self)
end

function GameObject:name()
    return self.name_
end

function GameObject:set_name(name)
    self.name_=name
end

function GameObject:layer()
    return self.layer_
end

function GameObject:set_layer(layer)
    self.layer_=layer
end

