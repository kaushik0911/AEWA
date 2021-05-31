ActiveAdmin.register Project do
  menu priority: 2

  permit_params :title, :description, :project_status_id, :start_date, :end_date, :display,
                  :street, :city, :zipcode, :lat, :lng

  filter :project_status, label: 'project status'
  filter :city_cont, label: 'city'
  filter :start_date, label: 'start date'
  filter :end_date, label: 'end date'

  index do
    id_column
    column :title
    column :city
    column :start_date
    column :end_date
    toggle_bool_column :display
    actions
  end

  form do |f|
    f.inputs 'Site Details' do
      f.input :title
      f.input :description, as: :quill_editor
      f.input :project_status, input_html: { class: "select2" }
      f.input :start_date, as: :date_time_picker, picker_options: { timepicker: false }
      f.input :end_date, as: :date_time_picker, picker_options: { timepicker: false }
      f.input :display, as: :select, input_html: { class: "select2" }, label: 'display', collection: [['Hide', false], ['Show', true]]
    end

    f.inputs "Location" do
      f.input :street
      f.input :city
      f.input :zipcode

      f.input :lat, label: 'latitude'
      f.input :lng, label: 'longitude'
      f.latlng map: :openstreetmap, map_zoom: 16, default_lat: ENV['default_lat'], default_lng: ENV['default_lng']
    end

    f.actions
  end
end
