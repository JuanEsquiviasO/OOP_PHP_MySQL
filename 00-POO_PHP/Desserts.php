<?php
interface Ingredients {
	public function define_ingredients($list);
	public function get_ingredients();
}

interface Recipe {
	public function define_recipe($steps);
	public function get_recipe();
}

class Dessert implements Ingredients, Recipe {
	private $ingredients;
	private $recipe;

	public function define_ingredients($list) {
		$this->ingredients = explode(',', $list);
	}
	public function get_ingredients() {
		$num_ingredients = count($this->ingredients);

		$html = '<ul>';
		for ($i=0; $i < $num_ingredients; $i++) { 
			$html .= '<li>' . $this->ingredients[$i] . '</li>';
		}
		$html .= '</ul>';

		return print($html);
	}
	public function define_recipe($steps) {
		$this->recipe = explode('|', $steps);
	}
	public function get_recipe() {
		$num_steps = count($this->recipe);

		$html = '<ol>';
		for ($i=0; $i < $num_steps; $i++) { 
			$html .= '<li>' . $this->recipe[$i] . '</li>';
		}
		$html .= '</ol>';

		return print($html);
	}
}

echo '<h1>Desserts</h1>';

echo '<h1>Hot Cakes</h1>';
$hot_cakes = new Dessert();
echo '<h3>Ingredients</h3>';
$hot_cakes->define_ingredients('
	250 grams Plain Flour,
	1 teaspoons Salt,
	1 teaspoon Baking Powder,
	4 whole Egg,
	2 teaspoons Sugar,
	2 Tablespoons Butter,
	250 milliliters Milk
');
$hot_cakes->get_ingredients();
echo '<h3>Recipe</h3>';
$hot_cakes->define_recipe('
	Sift the flour. In a mixing bowl, combine sifted flour, salt and baking powder|
	Now take a second bowl. Combine the egg, sugar, melted butter and milk. Next, slowly add egg mixture to the flour mixture|
	Whisk until the batter is smooth like thin cream. Allow batter to rest 10 minutes|
	Next heat a frying pan on medium heat and brush the pan with a little melted butter. Pour the batter on the pan using a small ladle about 1/4 cup or 30 ml, making a basic pancake that about 5 to 6 inches in diameter. Cook both sides until nicely golden brown|
	Serve your hot cake with jam or your favorite syrup
');
$hot_cakes->get_recipe();

echo '<h2>Lemon Pie</h2>';
$lemon_pie = new Dessert();
echo '<h3>Ingredients</h3>';
$lemon_pie->define_ingredients('
	1 cup white sugar,
	tablespoons all-purpose flour,
	tablespoons cornstarch 1/4,
	teaspoon salt 1 1/2,
	cups water 2,
	lemons and juiced and zested,
	2 tablespoons butter,
	4 egg yolks, 
	beaten 1 (9 inch) pie crust, 
	baked 4 egg whites
');
$lemon_pie->get_ingredients();
echo '<h3>Recipe</h3>';
$lemon_pie->define_recipe('
	Preheat oven to 350 degrees F (175 degrees C)|
	To Make Lemon Filling: In a medium saucepan, whisk together 1 cup sugar, flour, cornstarch, and salt. Stir in water, lemon juice and lemon zest. Cook over medium-high heat, stirring frequently, until mixture comes to a boil. Stir in butter. Place egg yolks in a small bowl and gradually whisk in 1/2 cup of hot sugar mixture. Whisk egg yolk mixture back into remaining sugar mixture. Bring to a boil and continue to cook while stirring constantly until thick. Remove from heat. Pour filling into baked pastry shell|
	To Make Meringue: In a large glass or metal bowl, whip egg whites until foamy. Add sugar gradually, and continue to whip until stiff peaks form. Spread meringue over pie, sealing the edges at the crust|
	Bake in preheated oven for 10 minutes, or until meringue is golden brown
');
$lemon_pie->get_recipe();