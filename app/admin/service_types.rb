ActiveAdmin.register ServiceType do
  permit_params :name
  filter :name_cont, label: 'name'
end
