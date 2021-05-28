ActiveAdmin.register SampleModel do
  menu priority: 6
  permit_params :title, :description, images: []
  filter :title_cont, label: 'title'

  form do |f|
    f.inputs 'Site Details' do
      f.input :title
      f.input :description, as: :quill_editor
      f.input :desplay, as: :select, input_html: { class: "select2" }, label: 'desplay', collection: [['Hide', false], ['Show', true]]
    end

    f.inputs 'Images' do
      f.input :images, as: :file, input_html: { multiple: true }
      if f.object.images.attached?
        ul(id: 'sample-model-images') do
          f.object.images.each do |img|
            li image_tag(img, size: '100')
            a "Delete", href: delete_model_image_admin_sample_model_path(img.id), "data-method": :delete, "data-confirm": "Are you sure?"
          end
        end
      end
    end

    f.actions
  end

  member_action :delete_model_image, method: :delete do
    image = ActiveStorage::Attachment.find(params[:id])
    image.purge_later
    redirect_back(fallback_location: edit_admin_sample_model_path)   
  end
end
