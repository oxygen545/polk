require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :user => nil,
      :photo => nil,
      :title => "MyString",
      :heading => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[user_id]"

      assert_select "input[name=?]", "item[photo_id]"

      assert_select "input[name=?]", "item[title]"

      assert_select "input[name=?]", "item[heading]"

      assert_select "textarea[name=?]", "item[body]"
    end
  end
end
