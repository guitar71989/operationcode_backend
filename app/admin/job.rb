ActiveAdmin.register Job do
  permit_params :title, :source_url, :source, :city, :state, :country, :description, :status, :remote

  index do
    selectable_column
    id_column

    column :title
    column :source_url
    column :source
    column :city
    column :state
    column :country
    column :description
    column :status
    column :remote

    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :source_url
      f.input :source
      f.input :city
      f.input :state
      f.input :country
      f.input :description
      f.input :status
      f.input :remote
    end

    f.actions
  end
end