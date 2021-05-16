ActiveAdmin.register Location do
  permit_params :title, :street, :city, :zipcode, :lat, :lng, :status

  form do |f|
    f.inputs 'Site Location Details' do
      f.input :title
      f.input :street
      f.input :city
      f.input :zipcode
      f.input :status
    end

    f.inputs 'Site Location' do
      f.input :lat, label: 'latitude'
      f.input :lng, label: 'longitude'
      f.latlng map: :openstreetmap, map_zoom: 16, default_lat: ENV['default_lat'], default_lng: ENV['default_lng']
    end

    f.actions
  end
  
end
