<?php
require 'Polygon.php';
require 'Triangle.php';
require 'Square.php';
require 'Rectangle.php';
require 'Hexagon.php';

echo '
<h1>Polygon</h1>
<p>Lorem ipsum dolor sit amet, affert maiorum vim ei, ne vis qualisque iracundia, vim te laudem bonorum iudicabit.</p>
<h2>Perimeter</h2>
<p>Lorem ipsum dolor sit amet, affert maiorum vim ei, ne vis qualisque iracundia, vim te laudem bonorum iudicabit.</p>
<h2>Area</h2>
<p>Lorem ipsum dolor sit amet, affert maiorum vim ei, ne vis qualisque iracundia, vim te laudem bonorum iudicabit.</p>
<hr>
';

echo '
	<h3>Triangle</h3>
	<img src="http://www.cimt.org.uk/projects/mepres/book7/bk7i9/s5eg2.gif">
';
$triangle = new Triangle(3, 6, 9, 10);
echo '<p>' . $triangle->lados() . '</p>';
echo '<p>Perimeter of ' . get_class($triangle) . ': <mark>' . $triangle->perimetro() . '</mark></p>';
echo '<p>Area of ' . get_class($triangle) . ': <mark>' . $triangle->area() . '</mark></p>';
echo '<hr>';

echo '
	<h3>Square</h3>
	<img src="http://s3-ap-southeast-1.amazonaws.com/subscriber.images/maths/2016/06/15074819/177.png">
';
$square = new Square(7);
echo '<p>' . $square->lados() . '</p>';
echo '<p>Perimeter of ' . get_class($square) . ': <mark>' . $square->perimetro() . '</mark></p>';
echo '<p>Area of ' . get_class($square) . ': <mark>' . $square->area() . '</mark></p>';
echo '<hr>';

echo '
	<h3>Rectangle</h3>
	<img src="http://spiff.rit.edu/classes/phys311/workshops/w1b/rectangle.gif">
';
$rectangle = new Rectangle(5,6);
echo '<p>' . $rectangle->lados() . '</p>';
echo '<p>Perimeter of ' . get_class($rectangle) . ': <mark>' . $rectangle->perimetro() . '</mark></p>';
echo '<p>Area of ' . get_class($rectangle) . ': <mark>' . $rectangle->area() . '</mark></p>';
echo '<hr>';

echo '
	<h3>Hexagon</h3>
	<img src="http://www.k6-geometric-shapes.com/images/formula-area-hexagon-2.jpg">
';
$hexagon = new Hexagon(8,9);
echo '<p>' . $hexagon->lados() . '</p>';
echo '<p>Perimeter of ' . get_class($hexagon) . ': <mark>' . $hexagon->perimetro() . '</mark></p>';
echo '<p>Area of ' . get_class($hexagon) . ': <mark>' . $hexagon->area() . '</mark></p>';
echo '<hr>';