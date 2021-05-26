ActiveAdmin.register SampleModel do
  menu priority: 6
  permit_params :title, :description, :images
  filter :title_cont, label: 'title'

  form do |f|
    f.inputs 'Site Details' do
      f.input :title
      f.input :description, as: :quill_editor
      f.input :desplay, as: :select, input_html: { class: "select2" }, label: 'desplay', collection: [['Hide', false], ['Show', true]]

      f.input :images, as: :file, input_html: { multiple: true }
    end

    f.actions
  end
end
