extends Node

func roll_pair(sides:int)->Dictionary:
	var d1=randi_range(1,sides)
	var d2=randi_range(1,sides)
	return {"d1":d1,"d2":d2,"sum":d1+d2,"pasch":d1==d2}
