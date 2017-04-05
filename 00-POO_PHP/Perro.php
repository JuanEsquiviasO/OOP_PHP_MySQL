<?php
class Perro {
	// public
	// private
	// protected
	//atributes
	public $nombre;
	public $raza;
	public $edad;
	public $sexo;
	public $adiestrado;
	public $foto;
	public $comida;
	private $pulgas;
	public static $mejor_amigo = 'Hombre';
	const MEJOR_CUALIDAD = 'fidelidad';

	//methods construct & destruct
	public function __construct($n, $r, $e, $s, $a, $f, $p) {
		$this->nombre = $n;
		$this->raza = $r;
		$this->edad = $e . ' años';
		$this->sexo = ($s) ? 'macho' : 'hembra';
		$this->adiestrado = ($a) ? 'adiestrado' : 'no adiestrado';
		$this->foto = $f;
		$this->pulgas = $p;
		echo '<p><mark>Here Construct method of the class</mark></p>';
	}

	public function __destruct() {
		echo '<p><mark>Here destruct method of the class</mark></p>';
	}

	//Methods
	public  function ladrar() {
		echo '<p><mark>Ladrando!!!</mark></p>';
	}

	public  function comer($c) {
		$this->comida = $c;
		echo '<p>' . $this->nombre . ' come ' . $this->comida . '</p>';
	}
	public  function aparecer() {
		echo '<img src="' . $this->foto . '">';
	}
	public function tiene_pulgas() {
		echo ($this->pulgas) ? '<p>Tiene pulgas</p>' : '</p>No tiene pulgas</p>';
	}
	public function mas_info() {
		self::ladrar();
		Perro::comer('huesos');
		echo '<p>El mejor amigo del perro es el ' . Perro::$mejor_amigo . '</p>';
		echo '<p>La mejor cualidad del perro es la ' . self::MEJOR_CUALIDAD . '</p>';
	}
}
//Instantiate an object of the class
$jobo = new Perro('Jobo', 'Labrador', 4, true, true, 'https://s-media-cache-ak0.pinimg.com/236x/8d/3b/12/8d3b1273b61d54f9171e6fcc99952d23.jpg', false);

// echo $jobo;
// var _dump($jobo);
echo '<h1>' . $jobo->nombre . '</h1>';
echo '<h2>' . $jobo->raza . '</h2>';
echo '<h3>' . $jobo->edad . '</h3>';
echo '<h4>' . $jobo->sexo . '</h4>';
echo '<h5>' . $jobo->adiestrado . '</h5>';
echo '<h6>' . $jobo->foto . '</h6>';
// echo '<h6>' . $jobo->pulgas . '</h6>';
$jobo->ladrar();
$jobo->comer('hueso');
$jobo->comer('hamburguesa');
$jobo->aparecer();
$jobo->tiene_pulgas();
$jobo->mas_info();



