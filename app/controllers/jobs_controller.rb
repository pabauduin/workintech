class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job  = Job.find(params[:id])
    @schools = School.all

    @markers = @schools.map do |school|
      {
        lat: school.latitude,
        lng: school.longitude
      }
    end
  end
end
