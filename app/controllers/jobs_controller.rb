class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job  = Job.find(params[:id])
    @markers = [{
      lat: @job.latitude,
      lng: @job.longitude
    }]
  end


end
