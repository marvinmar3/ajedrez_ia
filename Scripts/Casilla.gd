extends Area2D

# ============================================
# CASILLA DEL TABLERO
# Representa una casilla individual del tablero
# ============================================

signal casilla_clickeada(casilla)

# --- Propiedades ---
var coordenadas: Vector2i = Vector2i.ZERO
var es_clara: bool = true

# --- Colores ---
const COLOR_CLARO = Color(0.93, 0.86, 0.70)  # Beige claro
const COLOR_OSCURO = Color(0.70, 0.53, 0.39)  # Marrón
const COLOR_RESALTADO = Color(0.5, 0.8, 0.5, 0.7)  # Verde semi-transparente
const COLOR_SELECCION = Color(0.8, 0.8, 0.2, 0.7)  # Amarillo

# --- Referencias ---
@onready var sprite_fondo = $SpriteFondo
@onready var sprite_resaltado = $SpriteResaltado

func _ready():
	# Conectar señal de clic
	input_event.connect(_al_input)
	sprite_resaltado.visible = false

func establecer_color(es_casilla_clara: bool):
	"""
	Establece el color de la casilla
	"""
	es_clara = es_casilla_clara
	sprite_fondo.modulate = COLOR_CLARO if es_clara else COLOR_OSCURO

func resaltar():
	"""
	Resalta la casilla (para mostrar movimientos válidos)
	"""
	sprite_resaltado.visible = true
	sprite_resaltado.modulate = COLOR_RESALTADO

func quitar_resaltado():
	"""
	Quita el resaltado de la casilla
	"""
	sprite_resaltado.visible = false

func _al_input(viewport, evento, shape_idx):
	"""
	Maneja los eventos de entrada en la casilla
	"""
	if evento is InputEventMouseButton:
		if evento.button_index == MOUSE_BUTTON_LEFT and evento.pressed:
			emit_signal("casilla_clickeada", self)
