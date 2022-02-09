require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      id: "MyString",
      make: "MyString",
      model: "MyString",
      price: "9.99",
      photo: "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[id]"

      assert_select "input[name=?]", "item[make]"

      assert_select "input[name=?]", "item[model]"

      assert_select "input[name=?]", "item[price]"

      assert_select "input[name=?]", "item[photo]"
    end
  end
end
