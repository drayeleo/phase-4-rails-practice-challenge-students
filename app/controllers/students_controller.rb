class StudentsController < ApplicationController
  def index
    if params[:instructor_id]
      instructor = Instructor.find(params[:instructor_id])
      students = instructor.students
    else
      students = Student.all
    end
    render json: students
  end

  def show
    student = find_student
    render json: student
  end

  def create
    student = Student.create!(student_params)
    render json: student
  end

  def destroy
    student = find_student
    student.destroy
    head :no_content
  end

  def update
    student = find_student
    student.update!(student_params)
    render json: student
  end

  private

  def find_student
    Student.find(params[:id])
  end

  def student_params
    params.permit(:name, :major, :age, :instructor_id)
  end
end
