ActiveAdmin.register TeamMember do
  menu priority: 7
  permit_params :nickname, :full_name, :job_role, :primary_contact_number, :secondary_contact_number, :description, :email, :image, :display
  filter :full_name_cont, label: 'full name'

  form do |f|
    f.inputs 'Slider Details' do
      f.input :nickname
      f.input :full_name
      f.input :job_role
      f.input :primary_contact_number
      f.input :secondary_contact_number
      f.input :description, as: :quill_editor
      f.input :email
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
