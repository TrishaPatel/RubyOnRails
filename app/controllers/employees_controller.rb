class EmployeesController < ApplicationController
   def index
     @employee=Employee.all
   end

  def new
    @employee=Employee.new
  end

  def edit
    @employee=Employee.find(params[:id])
  end

  def update
    @employee=Employee.find(params[:id])
    if @employee.update(employeeparam)
      flash[:notice]="Employee Updated Sucessfully"
      redirect_to @employee
    else
      render 'edit'
    end
  end

  def create
      @employee=Employee.new(employeeparam)
      if @employee.save
        flash[:notice]="Employee Added Sucessfully"
          redirect_to @employee
      else
         render 'new'
      end
  end

  def show
    @employee=Employee.find(params[:id])
  end
 def destroy
    @employee=Employee.find(params[:id])
    @employee.destroy
    flash[:notice]="Employee Deleted Sucessfully"
    redirect_to employees_path
 end
  private
    def employeeparam
        params.require(:employee).permit(:Firstname,:Lastname,:gender)
    end
end
