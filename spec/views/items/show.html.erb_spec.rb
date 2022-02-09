require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      id: "Id",
      make: "Make",
      model: "Model",
      price: "9.99",
      photo: "Photo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Id/)
    expect(rendered).to match(/Make/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Photo/)
  end
end
