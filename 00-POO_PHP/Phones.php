<?php
class Phone {
	public $marca;
	public $modelo;
	protected $alambrico = true;
	protected $comunicacion;

	public function __construct($marca, $modelo) {
		$this->marca = $marca;
		$this->modelo = $modelo;
		$this->comunicacion = ($this->alambrico) ? 'Alámbrica' : 'Inalámbrica';
	}

	public function llamar() {
		return print('<p>Ringggg!!</p>');
	}

	public function mas_info() {
		return print('<ul>
			<li>Marca <b>' . $this->marca . '</b></li>
			<li>Modelo <b>' . $this->modelo . '</b></li>
			<li>Comunicación <b>' . $this->comunicacion . '</b></li>
		</ul>');
	}
}

class Mobile extends Phone {
	protected $alambrico = false;

	public function __construct($marca, $modelo) {
		parent::__construct($marca, $modelo);
	}
}

final class SmartPhone extends Mobile {
	public $alambrico = false;
	public $internet = true;

	public function __construct($marca, $modelo) {
		parent::__construct($modelo, $marca);
	}

	public function mas_info() {
		return print('<ul>
			<li>Marca <b>' . $this->marca . '</b></li>
			<li>Modelo <b>' . $this->modelo . '</b></li>
			<li>Comunicación <b>' . $this->comunicacion . '</b></li>
			<li>Dispositivo con internet</li>
		</ul>');
	}
}


echo '<h1>Evolución del teléfono</h1>';

echo '<h2>Teléfono:</h2>';
$tel_casa = new Phone('Panasonic', 'KX-TS550');
$tel_casa->llamar();
$tel_casa->mas_info();

echo '<h2>Mobile:</h2>';
$my_cel = new Mobile('Nokia', '5120');
$my_cel->llamar();
$my_cel->mas_info();

echo '<h2>SmartPhone:</h2>';
$my_smartphone = new SmartPhone('iPhone', '7');
$my_smartphone->llamar();
$my_smartphone->mas_info();