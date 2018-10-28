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
      redirect_to employee_path(@employee)
    else
      render 'edit'
    end
  end

  def create
      @employee=Employee.new(employeeparam)
      if @employee.save
        flash[:notice]="Employee Added Sucessfully"
           redirect_to employee_path(@employee)
      else
         render 'new'
      end
  end

  def show
    @employee=Employee.find(params[:id])
  end

  private
    def employeeparam
        params.require(:employee).permit(:Firstname,:Lastname,:gender)
    end
end
