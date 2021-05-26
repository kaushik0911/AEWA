ActiveAdmin.register Service do
  menu priority: 5
  filter :title_cont, label: 'title'

  permit_params :title, :description, :desplay

  form do |f|
    f.inputs 'Site Details' do
      f.input :title
      f.input :description, as: :quill_editor

      f.input :desplay, as: :select, input_html: { class: "select2" }, label: 'desplay', collection: [['Hide', false], ['Show', true]]
    end

    f.actions
  end
end
