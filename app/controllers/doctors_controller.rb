class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end
  
  def new
    @doctor = Doctor.new
  end
  
  def create
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
end
