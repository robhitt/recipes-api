whopper = Recipe.new(name: 'Veggie Whopper', style: 'Fast Food', img_url: 'http://bit.ly/2jGS4Xc')
meat_loaf = Recipe.new(name: 'Veggie Meatloaf', style: 'American', img_url: 'http://bit.ly/2l4kqri')
chana_masala = Recipe.new(name: 'Chana Masala', style: 'Indian', img_url: 'http://bit.ly/2l4xmxl')


lettuce = Ingredient.create(name: 'Lettuce', food_group: 'Vegetable', img_url: 'http://bit.ly/2kBmyco')
tomato = Ingredient.create(name: 'Tomato', food_group: 'Vegetable', img_url: 'http://bit.ly/2kaUkoh')
onion = Ingredient.create(name: 'Onion', food_group: 'Vegetable', img_url: 'http://bit.ly/1HWDBpu')
mayo = Ingredient.create(name: 'Mayonnaise', food_group: 'Condiment', img_url: 'http://bit.ly/1CZAeMM')
bun = Ingredient.create(name: 'Bun', food_group: 'Grain', img_url: 'http://bit.ly/2kBKi06')
ketchup = Ingredient.create(name: 'Ketchup', food_group: 'Condiment', img_url: 'http://bit.ly/2kaMKKd')
veggie_patty = Ingredient.create(name: 'Veggie Patty', food_group: 'Mock Meat', img_url: 'http://bit.ly/2k4DXHm')


burger_crumbles = Ingredient.create(name: 'Burger Crumbles', food_group: 'Mock Meat', img_url: 'http://bit.ly/2l16CBg')
bell_pepper = Ingredient.create(name: 'Green Bell Pepper', food_group: 'Vegetable', img_url: 'http://bit.ly/2kxQjes')
garlic = Ingredient.create(name: 'Minced Garlic', food_group: 'Spice', img_url: 'http://bit.ly/2jM9tZT')
parm_cheese = Ingredient.create(name: 'Parmesan Cheese', food_group: 'Dairy', img_url: 'http://bit.ly/2l69CZ9')
egg = Ingredient.create(name: 'Egg', food_group: 'Dairy', img_url: 'http://bit.ly/1QpnRDL')
thyme = Ingredient.create(name: 'Dried Thyme', food_group: 'Spice', img_url: 'http://bit.ly/2jM9MUx')
basil = Ingredient.create(name: 'Basil', food_group: 'Spice', img_url: 'http://bit.ly/2jHCE4S')
parsley = Ingredient.create(name: 'Parsley', food_group: 'Spice', img_url: 'http://bit.ly/2kxYNCn')
salt = Ingredient.create(name: 'Salt', food_group: 'Spice', img_url: 'http://bit.ly/SgRigY')
pepper = Ingredient.create(name: 'Pepper', food_group: 'Spice', img_url: 'http://bit.ly/2l4RjUW')
bread_crumbs = Ingredient.create(name: 'Bread Crumbs', food_group: 'Grain', img_url: 'http://bit.ly/2l1f976')
bbq = Ingredient.create(name: 'BBQ Sauce', food_group: 'Condiment', img_url: 'http://bit.ly/2l1cL0a')


ginger = Ingredient.create(name: 'Ginger', food_group: 'Spice', img_url: 'http://bit.ly/2kqtqHy')
chili_pepper = Ingredient.create(name: 'Chili Pepper', food_group: 'Spice', img_url: 'http://bit.ly/2l4RQpG')
olive_oil = Ingredient.create(name: 'Olive Oil', food_group: 'Oil', img_url: 'http://bit.ly/2kBun1J')
chili_powder = Ingredient.create(name: 'Chili Powder', food_group: 'Spice', img_url: 'http://bit.ly/2kxLqlw')
bay_leaves = Ingredient.create(name: 'Bay Leaves', food_group: 'Spice', img_url: 'http://bit.ly/2kaVMqJ')
coriander_powder = Ingredient.create(name: 'Coriander Powder', food_group: 'Spice', img_url: 'http://bit.ly/2l18p9s')
tumeric = Ingredient.create(name: 'Tumeric Powder', food_group: 'Spice', img_url: 'http://bit.ly/2l1gVFf')
garam_masala = Ingredient.create(name: 'Garam Masala ', food_group: 'Spice', img_url: 'http://n.pr/2jM9Wv4')
water = Ingredient.create(name: 'Water', food_group: 'Oil', img_url: 'http://bit.ly/2k4G3XK')
chickpeas = Ingredient.create(name: 'Chickpeas', food_group: 'Vegetable', img_url: 'http://bit.ly/2kaPLu5')

whopper.ingredients = [lettuce, tomato, onion, mayo, bun, ketchup, veggie_patty]
whopper.save

meat_loaf.ingredients = [burger_crumbles, bell_pepper, garlic, parm_cheese, egg, thyme, basil, parsley, salt, pepper, bread_crumbs, bbq, onion,]
meat_loaf.save

chana_masala.ingredients = [ginger, chili_pepper, olive_oil, chili_powder, bay_leaves, coriander_powder, tumeric, garam_masala, water, chickpeas]
chana_masala.save
