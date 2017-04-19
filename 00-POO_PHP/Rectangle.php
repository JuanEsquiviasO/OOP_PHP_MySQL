<?php
class Rectangle extends Polygon {
	private $base;
	private $height;

	public function __construct($b, $h) {
		$this->lados = 4;
		$this->base =$b;
		$this->height =$h;
	}

	public function perimetro() {
		return ($this->base + $this->height) * 2;
	}

	public function area() {
		return $this->base * $this->height;
	}
}