require 'rails_helper'

RSpec.describe 'the dishes show page' do
  before(:each) do
    @dish_1 = Dish.create(name: "Biscuits and Gravy", description: "Two Biscuits and Gravy")
    @dish_2 = Dish.create(name: "Burrito", description: "Tortilla, eggs, potatoes, and bacon")
    @ingredient_1 = @dish_1.ingredient.create!(name: "Biscuit", calorie: 600)
    @ingredient_2 = @dish_1.ingredient.create!(name: "Gravy", calorie: 300)
    @chef_1 = Chef.create!(name: "Suave")


  end

  it "shows name and description" do
    visit "/dishes/#{@dish_1.id}"

    expect(page).to have_content(@dish_1.name)
    expect(page).to have_content(@dish_1.description)
  end

  xit "shows list of ingredients for that dish" do
    visit "/dishes/#{@dish_1.id}"



  end

  xit 'shows total calorie count for dish' do

  end

  xit 'shows chef name' do 

  end
 end