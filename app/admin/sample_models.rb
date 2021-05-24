ActiveAdmin.register SampleModel do
  menu priority: 6
  permit_params :title
  filter :title_cont, label: 'title'
end
