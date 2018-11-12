ActiveAdmin.register Style do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
 permit_params :stylename, :description, :primary_font, :secondary_font, :alt_font, :primary_color, :secondary_color, :alt_color

end
