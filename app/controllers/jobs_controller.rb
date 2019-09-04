class JobsController < ApplicationController
  def index

    @jobs = Job.all
  end

  def show
    if params[:query].present?
      @schools = School
        .search_by_city_and_name(params[:query])
        .where.not(latitude: nil, longitude: nil)
    else
      @schools = School.where.not(latitude: nil, longitude: nil)
    end

    @job  = Job.find(params[:id])
    @markers = @schools.map do |school|
      {
        lat: school.latitude,
        lng: school.longitude,
        infoWindow: render_to_string(partial: "shared/infowindow", locals: { school: school })
      }
    end
  end
end
