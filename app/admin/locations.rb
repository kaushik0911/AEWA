ActiveAdmin.register Location do
  permit_params :title, :street, :city, :zipcode, :latitude, :longitude, :status

  form do |f|
    f.inputs 'Site Location Details' do
      f.input :title
      f.input :street
      f.input :city
      f.input :zipcode
      f.input :latitude
      f.input :longitude
      f.input :status
    end
    f.actions
  end
  
end
