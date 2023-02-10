class StudentController < ApplicationController
  def index
    @students = Learner.all
  end

  def show
    @students = Learner.all
  end

  def edit
  end

  def destroy
    @student.destroy

    respond_to do |format|
      redirect_to students_url
      flash[:notice]= "student is successfully destroyed." 
      # format.json { head :no_content }
    end
  end

  def new
    @learner = Learner.new(student_params)
    if request.post?
      if @learner.save
        flash[:notice] = "New student data is created"
        redirect_to :action=>show
      end
    end
  end

  private
  def student_params
    params.permit(:name, :age, :mark1, :mark2, :mark3, :mark4, :mark5, :grade)
  end
end
