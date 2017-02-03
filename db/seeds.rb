whopper = Recipe.new(name: 'Veggie Whopper', style: 'Fast Food', img_url: 'http://bit.ly/2jGS4Xc')
meat_loaf = Recipe.new(name: 'Veggie Meatloaf', style: 'American', img_url: 'http://bit.ly/2l4kqri')
chana_masala = Recipe.new(name: 'Chana Masala', style: 'Indian', img_url: 'http://bit.ly/2l4xmxl')


lettuce = Ingredient.create(name: 'Lettuce', food_group: 'Vegetable', img_url: 'http://bit.ly/2kBmyco')
tomato = Ingredient.create(name: 'Tomato', food_group: 'Vegetable', img_url: 'tomatourl')
onion = Ingredient.create(name: 'Onion', food_group: 'Vegetable', img_url: 'onionurl')
mayo = Ingredient.create(name: 'Mayonnaise', food_group: 'Condiment', img_url: 'mayourl')
bun = Ingredient.create(name: 'Bun', food_group: 'Grain', img_url: 'bunurl')
ketchup = Ingredient.create(name: 'Ketchup', food_group: 'Condiment', img_url: 'ketchupurl')
veggie_patty = Ingredient.create(name: 'Veggie Patty', food_group: 'Mock Meat', img_url: 'pattyurl')


burger_crumbles = Ingredient.create(name: 'Burger Crumbles', food_group: 'Mock Meat', img_url: 'burger_crumblesURL')
bell_pepper = Ingredient.create(name: 'Green Bell Pepper', food_group: 'Vegetable', img_url: 'pepperURL')
garlic = Ingredient.create(name: 'Minced Garlic', food_group: 'Spice', img_url: 'garlicURL')
parm_cheese = Ingredient.create(name: 'Parmesan Cheese', food_group: 'Dairy', img_url: 'parm_cheeseURL')
egg = Ingredient.create(name: 'Egg', food_group: 'Dairy', img_url: 'eggURL')
thyme = Ingredient.create(name: 'Dried Thyme', food_group: 'Spice', img_url: 'thymeURL')
basil = Ingredient.create(name: 'Basil', food_group: 'Spice', img_url: 'basilURL')
parsley = Ingredient.create(name: 'Parsley', food_group: 'Spice', img_url: 'parsleyURL')
salt = Ingredient.create(name: 'Salt', food_group: 'Spice', img_url: 'saltURL')
pepper = Ingredient.create(name: 'Pepper', food_group: 'Spice', img_url: 'pepeperURL')
bread_crumbs = Ingredient.create(name: 'Bread Crumbs', food_group: 'Grain', img_url: 'crumbsURL')
bbq = Ingredient.create(name: 'BBQ Sauce', food_group: 'Condiment', img_url: 'bbqURL')


ginger = Ingredient.create(name: 'Ginger', food_group: 'Spice', img_url: 'gingerURL')
chili_pepper = Ingredient.create(name: 'Chili Pepper', food_group: 'Spice', img_url: 'chiliURL')
olive_oil = Ingredient.create(name: 'Olive Oil', food_group: 'Oil', img_url: 'oliveURL')
chili_powder = Ingredient.create(name: 'Chili Powder', food_group: 'Spice', img_url: 'chili_powerURL')
bay_leaves = Ingredient.create(name: 'Bay Leaves', food_group: 'Spice', img_url: 'bay_leaveURL')
coriander_powder = Ingredient.create(name: 'Coriander Powder', food_group: 'Spice', img_url: 'corianderURL')
tumeric = Ingredient.create(name: 'Tumeric Powder', food_group: 'Spice', img_url: 'tumericURL')
garam_masala = Ingredient.create(name: 'Garam Masala ', food_group: 'Spice', img_url: 'masalaURL')
water = Ingredient.create(name: 'Water', food_group: 'Oil', img_url: 'waterURL')
chickpeas = Ingredient.create(name: 'Chickpeas', food_group: 'Vegetable', img_url: 'chickURL')

whopper.ingredients = [lettuce, tomato, onion, mayo, bun, ketchup, veggie_patty]
whopper.save

meat_loaf.ingredients = [burger_crumbles, bell_pepper, garlic, parm_cheese, egg, thyme, basil, parsley, salt, pepper, bread_crumbs, bbq, onion,]
meat_loaf.save

chana_masala.ingredients = [ginger, chili_pepper, olive_oil, chili_powder, bay_leaves, coriander_powder, tumeric, garam_masala, water, chickpeas]
chana_masala.save
