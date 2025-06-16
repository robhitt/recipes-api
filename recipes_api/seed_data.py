# recipes_api/seed_data.py

from recipes_api.db import SessionLocal
from recipes_api.models import (
    User,
    Recipe,
    Ingredient,
    Label,
    RecipeIngredient,
    RecipeLabel,
    UserRecipe
)

# Create a session
db = SessionLocal()

try:
    # Create user
    user = User(username="rob", email="rob@example.com")
    db.add(user)
    db.flush()  # Assigns ID

    # Create ingredients
    flour = Ingredient(name="Flour")
    sugar = Ingredient(name="Sugar")
    eggs = Ingredient(name="Eggs")
    db.add_all([flour, sugar, eggs])
    db.flush()

    # Create recipe
    recipe = Recipe(
        title="Pancakes",
        description="Fluffy pancakes made from scratch",
        instructions="Mix all ingredients and cook on a skillet.",
        owner_id=user.id
    )
    db.add(recipe)
    db.flush()

    # Add ingredients to recipe
    db.add_all([
        RecipeIngredient(recipe_id=recipe.id,
                         ingredient_id=flour.id, quantity="2", unit="cups"),
        RecipeIngredient(recipe_id=recipe.id,
                         ingredient_id=sugar.id, quantity="2", unit="tbsp"),
        RecipeIngredient(recipe_id=recipe.id,
                         ingredient_id=eggs.id, quantity="2", unit="pieces"),
    ])

    # Create label
    breakfast = Label(name="Breakfast")
    db.add(breakfast)
    db.flush()

    # Tag recipe with label
    db.add(RecipeLabel(recipe_id=recipe.id, label_id=breakfast.id))

    # Share recipe with the same user (test sharing relationship)
    db.add(UserRecipe(user_id=user.id, recipe_id=recipe.id))

    db.commit()
    print("✅ Seed data inserted successfully.")

except Exception as e:
    db.rollback()
    print("❌ Error inserting seed data:", e)

finally:
    db.close()
