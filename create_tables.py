# create_tables.py
from recipes_api.db import Base, engine
from recipes_api.models import User, Recipe, Ingredient, Label, RecipeIngredient, RecipeLabel, UserRecipe

print("⏳ Creating tables...")
Base.metadata.create_all(bind=engine)
print("✅ Tables created successfully.")
