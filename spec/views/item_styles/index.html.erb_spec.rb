require 'rails_helper'

RSpec.describe "item_styles/index", type: :view do
  before(:each) do
    assign(:item_styles, [
      ItemStyle.create!(
        :stylename => "Stylename",
        :description => "Description",
        :default_font => "Default Font",
        :secondary_font => "Secondary Font",
        :alt_font => "Alt Font",
        :default_color => "Default Color",
        :primary_color => "Primary Color",
        :secondary_color => "Secondary Color",
        :alt_primary_color => "Alt Primary Color",
        :alt_secondary_color => "Alt Secondary Color"
      ),
      ItemStyle.create!(
        :stylename => "Stylename",
        :description => "Description",
        :default_font => "Default Font",
        :secondary_font => "Secondary Font",
        :alt_font => "Alt Font",
        :default_color => "Default Color",
        :primary_color => "Primary Color",
        :secondary_color => "Secondary Color",
        :alt_primary_color => "Alt Primary Color",
        :alt_secondary_color => "Alt Secondary Color"
      )
    ])
  end

  it "renders a list of item_styles" do
    render
    assert_select "tr>td", :text => "Stylename".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Default Font".to_s, :count => 2
    assert_select "tr>td", :text => "Secondary Font".to_s, :count => 2
    assert_select "tr>td", :text => "Alt Font".to_s, :count => 2
    assert_select "tr>td", :text => "Default Color".to_s, :count => 2
    assert_select "tr>td", :text => "Primary Color".to_s, :count => 2
    assert_select "tr>td", :text => "Secondary Color".to_s, :count => 2
    assert_select "tr>td", :text => "Alt Primary Color".to_s, :count => 2
    assert_select "tr>td", :text => "Alt Secondary Color".to_s, :count => 2
  end
end
