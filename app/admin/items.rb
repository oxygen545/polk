ActiveAdmin.register Item do
 permit_params :title, :heading, :body, :item_style_id, :user_id, :photo_id

  index do
    selectable_column
    id_column
    column :title
    column :heading
    column :body
    column :style_id
    column :user_id
    column :photo_id
    actions
  end

  filter :item_style_id
  filter :user_id
  filter :photo_id

  form do |f|
    f.inputs do
      f.input :title
      f.input :heading
      f.input :body
      f.input :photo_id
      f.input :user_id
      f.input :style_id
    end
    f.actions
  end

def item_params
      params.require(:item).permit( :title, :heading, :body, :style_id, :user_id, :photo_id)
    end

end

