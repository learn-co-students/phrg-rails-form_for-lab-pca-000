class SchoolClassesController < ApplicationController
  def show
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    @school_class = SchoolClass.create(class_params)
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(class_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def class_params
    params.require(:school_class)
  end
end
