require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :title => "MyString",
      :heading => "MyString",
      :body => "MyText",
      :item_style => nil,
      :user => nil,
      :photo => nil
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[title]"

      assert_select "input[name=?]", "item[heading]"

      assert_select "textarea[name=?]", "item[body]"

      assert_select "input[name=?]", "item[item_style_id]"

      assert_select "input[name=?]", "item[user_id]"

      assert_select "input[name=?]", "item[photo_id]"
    end
  end
end
