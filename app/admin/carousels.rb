ActiveAdmin.register Carousel do
  menu priority: 7
  permit_params :title
  filter :title_cont, label: 'title'
end
