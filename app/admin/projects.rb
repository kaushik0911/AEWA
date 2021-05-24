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
      f.input :location, input_html: { class: "select2" }
      f.input :start_date, as: :date_time_picker, picker_options: { timepicker: false }
      f.input :end_date, as: :date_time_picker, picker_options: { timepicker: false }
    end
    f.actions
  end
end
