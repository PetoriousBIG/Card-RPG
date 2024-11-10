extends Sprite2D

const NUMBER_BACKGROUNDS = 6

var bg0 = preload("res://assets/backgrounds-1024x512/bg0.png")
var bg1 = preload("res://assets/backgrounds-1024x512/bg1.png")
var bg2 = preload("res://assets/backgrounds-1024x512/bg2.png")
var bg3 = preload("res://assets/backgrounds-1024x512/bg3.png")

var setBG = true
var background : Texture

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    var bgArray : Array = [bg0, bg1, bg2, bg3]
    background = bgArray.pick_random()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    if setBG:
        self.texture = background
        setBG = false
