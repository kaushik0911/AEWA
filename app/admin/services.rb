ActiveAdmin.register Service do
  menu priority: 5
  permit_params :title
  filter :title_cont, label: 'title'
end
