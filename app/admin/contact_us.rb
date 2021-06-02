ActiveAdmin.register ContactU do
  permit_params :status
  filter :subject_cont, label: 'title'
  filter :email_cont, label: 'email'

  form do |f|
    f.inputs 'Contact Us' do
      f.input :name
      f.input :email
      f.input :subject
      f.input :comment
      f.input :status
    end

    f.actions
  end  
end
