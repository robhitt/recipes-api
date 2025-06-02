# recipes_api/models.py

from datetime import datetime
from sqlalchemy import (
    Column,
    Integer,
    String,
    Text,
    ForeignKey,
    DateTime,
    UniqueConstraint,
)
from sqlalchemy.orm import relationship, Mapped, mapped_column
from recipes_api.db import Base


class User(Base):
    __tablename__ = "users"

    # id = Column(Integer, primary_key=True) --> SqlAlchemy 1 syntax
    id: Mapped[int] = mapped_column(primary_key=True)  # --> SQLAlchemy 2
    username: Mapped[str] = mapped_column(String, unique=True, nullable=False)
    email: Mapped[str] = mapped_column(String, unique=True, nullable=False)
    created_at: Mapped[datetime] = mapped_column(default=datetime.utcnow)

    owned_recipes = relationship("Recipe", back_populates="owner")
    shared_recipes = relationship("UserRecipe", back_populates="user")

    def __repr__(self):
        return f"<User id={self.id} username='{self.username}'>"


class Recipe(Base):
    __tablename__ = "recipes"

    id: Mapped[int] = mapped_column(primary_key=True)
    title: Mapped[str] = mapped_column(String, nullable=False)
    description: Mapped[str] = mapped_column(Text, nullable=True)
    instructions: Mapped[str] = mapped_column(Text, nullable=True)
    created_at: Mapped[datetime] = mapped_column(default=datetime.utcnow)
    updated_at: Mapped[datetime] = mapped_column(
        default=datetime.utcnow, onupdate=datetime.utcnow
    )

    owner_id: Mapped[int] = mapped_column(
        ForeignKey("users.id"), nullable=False)
    owner = relationship("User", back_populates="owned_recipes")

    ingredients = relationship("RecipeIngredient", back_populates="recipe")
    labels = relationship("RecipeLabel", back_populates="recipe")
    shared_with = relationship("UserRecipe", back_populates="recipe")

    def __repr__(self):
        return f"<Recipe id={self.id} title='{self.title}'>"


class UserRecipe(Base):
    __tablename__ = "user_recipes"
    __table_args__ = (UniqueConstraint("user_id", "recipe_id"),)

    user_id: Mapped[int] = mapped_column(
        ForeignKey("users.id"), primary_key=True)
    recipe_id: Mapped[int] = mapped_column(
        ForeignKey("recipes.id"), primary_key=True)
    shared_at: Mapped[datetime] = mapped_column(default=datetime.utcnow)

    user = relationship("User", back_populates="shared_recipes")
    recipe = relationship("Recipe", back_populates="shared_with")

    def __repr__(self):
        return f"<UserRecipe user_id={self.user_id} recipe_id={self.recipe_id}>"


class Ingredient(Base):
    __tablename__ = "ingredients"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String, unique=True, nullable=False)

    used_in = relationship("RecipeIngredient", back_populates="ingredient")

    def __repr__(self):
        return f"<Ingredient id={self.id} name='{self.name}'>"


class RecipeIngredient(Base):
    __tablename__ = "recipe_ingredients"
    __table_args__ = (UniqueConstraint("recipe_id", "ingredient_id"),)

    recipe_id: Mapped[int] = mapped_column(
        ForeignKey("recipes.id"), primary_key=True)
    ingredient_id: Mapped[int] = mapped_column(
        ForeignKey("ingredients.id"), primary_key=True
    )
    quantity: Mapped[str] = mapped_column(String, nullable=True)
    unit: Mapped[str] = mapped_column(String, nullable=True)

    recipe = relationship("Recipe", back_populates="ingredients")
    ingredient = relationship("Ingredient", back_populates="used_in")

    def __repr__(self):
        return f"<RecipeIngredient recipe_id={self.recipe_id} ingredient_id={self.ingredient_id}>"


class Label(Base):
    __tablename__ = "labels"

    id: Mapped[int] = mapped_column(primary_key=True)
    name: Mapped[str] = mapped_column(String, unique=True, nullable=False)

    attached_to = relationship("RecipeLabel", back_populates="label")

    def __repr__(self):
        return f"<Label id={self.id} name='{self.name}'>"


class RecipeLabel(Base):
    __tablename__ = "recipe_labels"
    __table_args__ = (UniqueConstraint("recipe_id", "label_id"),)

    recipe_id: Mapped[int] = mapped_column(
        ForeignKey("recipes.id"), primary_key=True)
    label_id: Mapped[int] = mapped_column(
        ForeignKey("labels.id"), primary_key=True)

    recipe = relationship("Recipe", back_populates="labels")
    label = relationship("Label", back_populates="attached_to")

    def __repr__(self):
        return f"<RecipeLabel recipe_id={self.recipe_id} label_id={self.label_id}>"
