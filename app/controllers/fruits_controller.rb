class FruitsController < ApplicationController
  before_action :set_fruit, only: %i[ show edit update destroy ]
  def index
    @fruits = current_user.fruits.all
  end
  def show
  end
  def new
    @fruit = Fruit.new
  end
  def edit
  end
  def create
    @fruit = current_user.fruits.new(fruit_params)

    respond_to do |format|
      if @fruit.save
        format.html { redirect_to root_path, notice: "Fruit was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @fruit.update(fruit_params)
        format.html { redirect_to root_path, notice: "Fruit was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @fruit.destroy!

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Fruit was successfully destroyed." }
    end
  end

  private
    def set_fruit
      @fruit = Fruit.find(params[:id])
    end

    def fruit_params
      params.require(:fruit).permit(:name, :color, :origin, :season, :price)
    end
end
