extends Sprite2D

const BOARD_SIZE = 8
const CELL_WIDTH = 18
 
const BLACK_BISHOP= preload("res://Assets/black_bishop.png")
const BLACK_KING= preload("res://Assets/black_king.png")
const BLACK_KNIGHT= preload("res://Assets/black_knight.png")
const BLACK_PAWN= preload("res://Assets/black_pawn.png")
const BLACK_QUEEN= preload("res://Assets/black_queen.png")
const BLACK_ROOK= preload("res://Assets/black_rook.png")
const WHITE_BISHOP= preload("res://Assets/white_bishop.png")
const WHITE_KING= preload("res://Assets/white_king.png")
const WHITE_KNIGHT= preload("res://Assets/white_knight.png")
const WHITE_PAWN= preload("res://Assets/white_pawn.png")
const WHITE_QUEEN= preload("res://Assets/white_queen.png")
const WHITE_ROOK= preload("res://Assets/white_rook.png")

const TURN_BLACK= preload("res://Assets/turn-black.png")
const TURN_WHITE= preload("res://Assets/turn-white.png")

@onready var pieces = $Pieces
@onready var dots = $Dots
@onready var turn = $Turn

#variables
# -6 rey negro
# -5 reina negro
# -4 torre negro
# -3 alfil negro
# -2 caballero negro
# -1 peon negro
# 0 EMPATE
# 6 rey blanco
# 5 reina blanco
# 4 torre blanco
# 3 alfil blanco
# 2 caballero blanco
# 1 peon blanco


var board : Array
var white : bool
var state : bool
var moves : bool
var selected_piece : Vector2



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	board.append([4,2,3,5,6,3,2,4])
	board.append([1,1,1,1,1,1,1,1])
	board.append([0,0,0,0,0,0,0,0])
	board.append([0,0,0,0,0,0,0,0])
	board.append([0,0,0,0,0,0,0,0])
	board.append([0,0,0,0,0,0,0,0])
	board.append([-1,-1,-1,-1,-1,-1,-1,-1])
	board.append([-4,-2,-3,-5,-6,-3,-2,-4])
	
	display_board()
	
func display_board():
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
