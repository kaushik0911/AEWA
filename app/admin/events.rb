ActiveAdmin.register Event do
  menu priority: 7
  permit_params :title, :description
  filter :title_cont, label: 'title'

  form do |f|
    f.inputs 'Site Details' do
      f.input :title
      f.input :description, as: :quill_editor
    end

    f.actions
  end
end
