require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        id: "Id",
        make: "Make",
        model: "Model",
        price: "9.99",
        photo: "Photo"
      ),
      Item.create!(
        id: "Id",
        make: "Make",
        model: "Model",
        price: "9.99",
        photo: "Photo"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", text: "Id".to_s, count: 2
    assert_select "tr>td", text: "Make".to_s, count: 2
    assert_select "tr>td", text: "Model".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "Photo".to_s, count: 2
  end
end
