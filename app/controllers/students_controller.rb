class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    # Student.create(params[:student])
    @first_name = params[:student][:first_name]
    @last_name = params[:student][:last_name]
    # byebug
    render new_student_path
  end

  private

  def sanitize
    params[:student]
  end


end
