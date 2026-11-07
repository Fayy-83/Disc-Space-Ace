extends Label
var count = 1024
func _ready() -> void:
	text = "SoyDEV SOYBIOS v1.0, MU CS SOC /n"


func _process(_delta):
	if count < 32000:
		count += 1024
		text = "SoyDEV SOYBIOS v1.0, MU CS SOC

"
	elif count < 64000:
		count += 1024
		text = "SoyDEV SOYBIOS v1.0, MU CS SOC

Shintel i586 ShitSet(TM)

"

	elif count < 96000:
		count += 1024
		text = "SoyDEV SOYBIOS v1.0, MU CS SOC

Shintel i586 ShitSet(TM)

Fentium CPU @100Mhz
"

	else:
		text = "SoyDEV SOYBIOS v1.0, MU CS SOC

Shintel i586 ShitSet(TM)

Fentium CPU @100Mhz
Checking RAM: "
