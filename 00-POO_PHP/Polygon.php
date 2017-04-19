<?php
abstract class Polygon {
	protected $lados;

	abstract protected function perimetro();
	abstract protected function area();

	public function lados() {
		return 'The <mark> ' . get_called_class() . '</mark> have <mark>' . $this->lados . '</mark> lados';
	}
}