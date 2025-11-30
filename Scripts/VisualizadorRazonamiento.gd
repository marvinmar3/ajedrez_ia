extends Control

@onready var etiqueta_info = $PanelInfo/EtiquetaInfo
@onready var boton_cerrar = $BotonCerrar

func _ready():
	if boton_cerrar:
		boton_cerrar.pressed.connect(_al_cerrar)
	visible = false

func mostrar_razonamiento(arbol_decision: Dictionary):
	visible = true
	if etiqueta_info:
		etiqueta_info.text = "IA analizó la posición\nEvaluación: " + str(arbol_decision.get("evaluacion", 0))

func limpiar():
	visible = false
	if etiqueta_info:
		etiqueta_info.text = ""

func _al_cerrar():
	visible = false
