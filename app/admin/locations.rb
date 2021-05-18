ActiveAdmin.register Location do
  menu priority: 2

  permit_params :title, :street, :city, :zipcode, :lat, :lng

  filter :city_cont, label: 'city'
  filter :contract, label: 'contract'

  index do
    id_column
    column :address
    column('number of contracts') { |location| location.contract.count }
    actions
  end
  
  form do |f|
    f.inputs 'Site Location Details' do
      f.input :title
      f.input :street
      f.input :city
      f.input :zipcode
    end

    f.inputs 'Site Location' do
      f.input :lat, label: 'latitude'
      f.input :lng, label: 'longitude'
      f.latlng map: :openstreetmap, map_zoom: 16, default_lat: ENV['default_lat'], default_lng: ENV['default_lng']
    end

    f.actions
  end
end
