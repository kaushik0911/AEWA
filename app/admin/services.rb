ActiveAdmin.register Service do
  menu priority: 5
  permit_params :title, :description, :display, :image
  filter :title_cont, label: 'title'

  form do |f|
    f.inputs 'Slider Details' do
      f.input :title
      f.input :description, as: :quill_editor
      f.input :display, as: :select, input_html: { class: "select2" }, label: 'display', collection: [['Hide', false], ['Show', true]]
    end

    f.inputs 'Slider Image' do
      f.input :image, as: :file, input_html: { multiple: false }
      if f.object.image.attached?
        ul(id: 'sample-model-images') do
          li image_tag(f.object.image, size: '100')
          a "Delete", href: delete_model_image_admin_sample_model_path(f.object.image), "data-method": :delete, "data-confirm": "Are you sure?"
        end
      end
    end
    f.actions
  end
end
