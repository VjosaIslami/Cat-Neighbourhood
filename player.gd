[gd_scene format=3 uid="uid://18swssujvl7u"]

[ext_resource type="PackedScene" uid="uid://b68qjjvqqspl4" path="res://scenes/player.tscn" id="1_uwrxv"]
[ext_resource type="PackedScene" uid="uid://c6v1eeno2huy3" path="res://scenes/house.tscn" id="2_yqjtg"]

[node name="Game" type="Node2D" unique_id=602008972]

[node name="Player" parent="." unique_id=1566058869 instance=ExtResource("1_uwrxv")]
position = Vector2(0, -8)

[node name="Camera2D" type="Camera2D" parent="Player" unique_id=2087761346]
position = Vector2(0, -26)
scale = Vector2(1, -0.43999946)
zoom = Vector2(5, 5)
position_smoothing_enabled = true
rotation_smoothing_enabled = true

[node name="House" parent="." unique_id=587560834 instance=ExtResource("2_yqjtg")]
