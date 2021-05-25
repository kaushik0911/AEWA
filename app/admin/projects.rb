ActiveAdmin.register Project do
  menu priority: 2

  permit_params :title, :description, :project_status_id, :location_id, :start_date, :end_date

  filter :project_status, label: 'project_status'
  filter :location, label: 'location'
  filter :start_date, label: 'start date'
  filter :end_date, label: 'end date'

  index do
    id_column
    column :title
    column :location
    column ('location') { |contract| contract.location.address }
    column :start_date
    column :end_date
    actions
  end

  form do |f|
    f.inputs 'Site Details' do
      f.input :title
      f.input :description
      f.input :project_status, input_html: { class: "select2" }
      f.input :start_date, as: :date_time_picker, picker_options: { timepicker: false }
      f.input :end_date, as: :date_time_picker, picker_options: { timepicker: false }
    end

    f.inputs "Location" do
      f.has_many :location, heading: false, allow_destroy: true do |lf|
        lf.input :title
        lf.input :street
        lf.input :city
        lf.input :zipcode

        lf.input :lat, label: 'latitude'
        lf.input :lng, label: 'longitude'
        lf.latlng map: :openstreetmap, map_zoom: 16, default_lat: ENV['default_lat'], default_lng: ENV['default_lng']
      end
    end
    f.actions

    f.actions
  end
end
