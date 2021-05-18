ActiveAdmin.register AlphaLog do
  menu false
  permit_params :comment, :cost

  index do
    id_column
    column(:comment) { |log| log.comment.html_safe }
    column :cost
    actions
  end

  form do |f|
    f.inputs 'Alpha Log' do
      f.input :cost, type: :number
      f.input :comment, as: :quill_editor
    end
    f.actions
  end

  show do
    attributes_table do
      row :cost
      row(:log) { |log| log.comment.html_safe }
    end
    active_admin_comments
  end
end
