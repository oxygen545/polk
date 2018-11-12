require 'rails_helper'

RSpec.describe "item_styles/show", type: :view do
  before(:each) do
    @item_style = assign(:item_style, ItemStyle.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Stylename/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Default Font/)
    expect(rendered).to match(/Secondary Font/)
    expect(rendered).to match(/Alt Font/)
    expect(rendered).to match(/Default Color/)
    expect(rendered).to match(/Primary Color/)
    expect(rendered).to match(/Secondary Color/)
    expect(rendered).to match(/Alt Primary Color/)
    expect(rendered).to match(/Alt Secondary Color/)
  end
end
