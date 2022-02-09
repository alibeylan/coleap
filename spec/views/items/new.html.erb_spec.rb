require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      id: "MyString",
      make: "MyString",
      model: "MyString",
      price: "9.99",
      photo: "MyString"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[id]"

      assert_select "input[name=?]", "item[make]"

      assert_select "input[name=?]", "item[model]"

      assert_select "input[name=?]", "item[price]"

      assert_select "input[name=?]", "item[photo]"
    end
  end
end
