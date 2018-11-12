require 'rails_helper'

RSpec.describe "item_styles/new", type: :view do
  before(:each) do
    assign(:item_style, ItemStyle.new(
      :stylename => "MyString",
      :description => "MyString",
      :default_font => "MyString",
      :secondary_font => "MyString",
      :alt_font => "MyString",
      :default_color => "MyString",
      :primary_color => "MyString",
      :secondary_color => "MyString",
      :alt_primary_color => "MyString",
      :alt_secondary_color => "MyString"
    ))
  end

  it "renders new item_style form" do
    render

    assert_select "form[action=?][method=?]", item_styles_path, "post" do

      assert_select "input[name=?]", "item_style[stylename]"

      assert_select "input[name=?]", "item_style[description]"

      assert_select "input[name=?]", "item_style[default_font]"

      assert_select "input[name=?]", "item_style[secondary_font]"

      assert_select "input[name=?]", "item_style[alt_font]"

      assert_select "input[name=?]", "item_style[default_color]"

      assert_select "input[name=?]", "item_style[primary_color]"

      assert_select "input[name=?]", "item_style[secondary_color]"

      assert_select "input[name=?]", "item_style[alt_primary_color]"

      assert_select "input[name=?]", "item_style[alt_secondary_color]"
    end
  end
end
