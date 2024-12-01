ActiveAdmin.register Team do
  permit_params :name, :championship_id

  index do
    selectable_column
    id_column
    column :name
    column :championship
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :championship, as: :select, collection: Championship.all
    end
    f.actions
  end
end
