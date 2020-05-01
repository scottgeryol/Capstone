user = User.create!({ first_name: "Scott", last_name: "Geryol", password: "password", email: "scott@example.com" })
user = User.create!({ first_name: "David", last_name: "B", password: "password", email: "david@example.com" })
user = User.create!({ first_name: "Jeff", last_name: "H", password: "password", email: "jeff@example.com" })
user = User.create!({ first_name: "Justin", last_name: "V", password: "password", email: "justin@example.com" })

ingredient = Ingredient.create!({ name: "Fresh Sourdough" }) #1
ingredient = Ingredient.create!({ name: "Lemon" }) #2
ingredient = Ingredient.create!({ name: "Goat Cheese" }) # 3
ingredient = Ingredient.create!({ name: "Avocado" }) #4
ingredient = Ingredient.create!({ name: "Egg" }) #5
ingredient = Ingredient.create!({ name: "Crushed Red Pepper" }) #6
ingredient = Ingredient.create!({ name: "AP Flour" }) #7
ingredient = Ingredient.create!({ name: "Banana" }) #8
ingredient = Ingredient.create!({ name: "Baking Soda" }) #9
ingredient = Ingredient.create!({ name: "Greek Yogurt" }) #10
ingredient = Ingredient.create!({ name: "Dark Brown Sugar" }) #11
ingredient = Ingredient.create!({ name: "Butter" }) #12
ingredient = Ingredient.create!({ name: "Bittersweet Chocolate" }) #13
ingredient = Ingredient.create!({ name: "Kosher Salt" }) #14
ingredient = Ingredient.create!({ name: "Ground Pepper" }) #15
ingredient = Ingredient.create!({ name: "Olive Oil" }) #16
ingredient = Ingredient.create!({ name: "Pesto" }) #17
ingredient = Ingredient.create!({ name: "Ricotta" }) #18
ingredient = Ingredient.create!({ name: "Onion" }) #19
ingredient = Ingredient.create!({ name: "Green Pepper" }) #20
ingredient = Ingredient.create!({ name: "Ground Beef" }) #21
ingredient = Ingredient.create!({ name: "Garlic" }) #22
ingredient = Ingredient.create!({ name: "Black Beans" }) #23
ingredient = Ingredient.create!({ name: "Whole Peeled Tomatos" }) #24
ingredient = Ingredient.create!({ name: "Cumin" }) #25
ingredient = Ingredient.create!({ name: "Cayenne" }) #26
ingredient = Ingredient.create!({ name: "Chili Powder" }) #27
ingredient = Ingredient.create!({ name: "Cheddar Cheese" }) #28
ingredient = Ingredient.create!({ name: "Lime" }) #29
ingredient = Ingredient.create!({ name: "Chili Adobo Sauce" }) #30
ingredient = Ingredient.create!({ name: "Tortilla Chips" }) #31

recipe = Recipe.create!({ name: "Avocado Toast", description: "Avocado spread on fresh sourdough bread topped with goat cheese and a touch of lemon", directions: "Toast fresh bread, slice open one avocado...", notes: "...", user_id: 1 })
IngredientRecipe.create!({ ingredient_id: 1, recipe_id: 1, quantity: "2 slice" })
IngredientRecipe.create!({ ingredient_id: 2, recipe_id: 1, quantity: "1 tsp" })
IngredientRecipe.create!({ ingredient_id: 3, recipe_id: 1, quantity: "2oz" })
IngredientRecipe.create!({ ingredient_id: 4, recipe_id: 1, quantity: "1" })
IngredientRecipe.create!({ ingredient_id: 5, recipe_id: 1, quantity: "2" })
IngredientRecipe.create!({ ingredient_id: 6, recipe_id: 1, quantity: ".5 tsp" })
IngredientRecipe.create!({ ingredient_id: 16, recipe_id: 1, quantity: "1 oz" })
recipe = Recipe.create!({ name: "Banana Bread", description: "Dense and sweet traditional banana bread", directions: "Mix all dry ingredients in a bowl, smash 4 very ripe bananas...", notes: "...", user_id: 2 })
IngredientRecipe.create!({ ingredient_id: 7, recipe_id: 2, quantity: "1 1/2 cup" })
IngredientRecipe.create!({ ingredient_id: 8, recipe_id: 2, quantity: "4 large very ripe" })
IngredientRecipe.create!({ ingredient_id: 9, recipe_id: 2, quantity: "1 1/4tsp" })
IngredientRecipe.create!({ ingredient_id: 10, recipe_id: 2, quantity: "1/3 cup" })
IngredientRecipe.create!({ ingredient_id: 11, recipe_id: 2, quantity: "1 cup" })
IngredientRecipe.create!({ ingredient_id: 12, recipe_id: 2, quantity: "1/4 cup" })
IngredientRecipe.create!({ ingredient_id: 13, recipe_id: 2, quantity: "1/2 cup" })
IngredientRecipe.create!({ ingredient_id: 14, recipe_id: 2, quantity: "a pinch" })
recipe = Recipe.create!({ name: "Pesto Ravioli", description: "Fresh pasta stuffed with ricotta cheese tossed in a pesto sauce", directions: "Stuff fresh pasta with ricotta cheese...", notes: "...", user_id: 3 })
IngredientRecipe.create!({ ingredient_id: 5, recipe_id: 3, quantity: "3 large, beaten" })
IngredientRecipe.create!({ ingredient_id: 7, recipe_id: 3, quantity: "2 cups" })
IngredientRecipe.create!({ ingredient_id: 16, recipe_id: 3, quantity: "1 TBS" })
IngredientRecipe.create!({ ingredient_id: 14, recipe_id: 3, quantity: "1 tsp" })
IngredientRecipe.create!({ ingredient_id: 18, recipe_id: 3, quantity: "2 cups" })
IngredientRecipe.create!({ ingredient_id: 17, recipe_id: 3, quantity: "1 cup" })
recipe = Recipe.create!({ name: "Chili", description: "Meaty, spicy, and hearty comfort food", directions: "Dice onion, garlic, and peppers. Saute in ghee until translucent..", notes: "...", user_id: 2 })
IngredientRecipe.create!({ ingredient_id: 19, recipe_id: 4, quantity: "1 medium" })
IngredientRecipe.create!({ ingredient_id: 20, recipe_id: 4, quantity: "1 medium" })
IngredientRecipe.create!({ ingredient_id: 21, recipe_id: 4, quantity: "1 1/2 lbs" })
IngredientRecipe.create!({ ingredient_id: 22, recipe_id: 4, quantity: "3 cloves, chopped" })
IngredientRecipe.create!({ ingredient_id: 23, recipe_id: 4, quantity: "2 15oz cans" })
IngredientRecipe.create!({ ingredient_id: 24, recipe_id: 4, quantity: "1 28oz whole peeled" })
IngredientRecipe.create!({ ingredient_id: 25, recipe_id: 4, quantity: "1 TBS" })
IngredientRecipe.create!({ ingredient_id: 26, recipe_id: 4, quantity: "3 tsp" })
IngredientRecipe.create!({ ingredient_id: 27, recipe_id: 4, quantity: "1 TBS" })
IngredientRecipe.create!({ ingredient_id: 28, recipe_id: 4, quantity: "for topping" })
IngredientRecipe.create!({ ingredient_id: 29, recipe_id: 4, quantity: "1" })
IngredientRecipe.create!({ ingredient_id: 30, recipe_id: 4, quantity: "3 tsp" })
IngredientRecipe.create!({ ingredient_id: 31, recipe_id: 4, quantity: "for topping" })
IngredientRecipe.create!({ ingredient_id: 14, recipe_id: 4, quantity: "season to taste" })
IngredientRecipe.create!({ ingredient_id: 15, recipe_id: 4, quantity: "season to taste" })

supplier = Supplier.create!({ name: "Instacart", phone_number: "555-555-5555", email: "instacart@example.com" })
supplier = Supplier.create!({ name: "Amazon Fresh", phone_number: "000-000-0000", email: "amazonfresh@example.com" })

recipe_user = RecipeUser.create!({ recipe_id: 4, user_id: 1 }) #cookbook
recipe_user = RecipeUser.create!({ recipe_id: 2, user_id: 3 })
recipe_user = RecipeUser.create!({ recipe_id: 1, user_id: 4 })
recipe_user = RecipeUser.create!({ recipe_id: 3, user_id: 2 })

ingredient_user = IngredientUser.create!({ ingredient_id: 1, user_id: 1 }) #pantry
ingredient_user = IngredientUser.create!({ ingredient_id: 1, user_id: 1 }) #pantry
ingredient_user = IngredientUser.create!({ ingredient_id: 1, user_id: 1 }) #pantry
ingredient_user = IngredientUser.create!({ ingredient_id: 1, user_id: 1 }) #pantry
ingredient_user = IngredientUser.create!({ ingredient_id: 1, user_id: 1 }) #pantry
ingredient_user = IngredientUser.create!({ ingredient_id: 1, user_id: 1 }) #pantry

# image = Image.create!({ url: "https://hips.hearstapps.com/hmg-prod/images/sourdough-bread-horizontal-half-1547669255.png?crop=1.00xw%3A0.847xh%3B0%2C0.0528xh&resize=480%3A270", ingredient_id: 1, recipe_id: 1 })
# image = Image.create!({ url: "https://prettysimplesweet.com/wp-content/uploads/2018/04/Easy-Banana-Bread-Recipe.jpg", ingredient_id: 8, recipe_id: 2 })
