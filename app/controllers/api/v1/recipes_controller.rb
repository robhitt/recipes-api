module Api::V1
  class RecipesController < ApplicationController
    def index
      @recipes = Recipe.all
      render json: @recipes
    end

    def show
      @recipe = Recipe.find(params[:id])
      render json: @recipe
    end

    def create
      @recipe = Recipe.create(name: params[:recipe][:name], style: params[:recipe][:style], img_url: params[:recipe][:img_url])
      render json: @recipe, status: 201
    end

    def new
      @recipe = Recipe.new
      render json: @recipe
    end

    def edit
      @recipe = Recipe.find(params[:id])
      render json: @recipe
    end

    def update
      @recipe = Recipe.find(params[:id])
      @recipe.update(params)
      render json: @recipe
    end

    def destory
      @recipe = Recipe.find(params[:id])
      @recipe.destroy
      @recipes = Recipe.all
      render json: @recipes
    end
  end
end
