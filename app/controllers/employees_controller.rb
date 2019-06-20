class EmployeesController < ApplicationController
  def index
    @employee = Employee.all
  end
  def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to @employee.company
  end
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to @employee.company
  end
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :area_id, :company_id)
  end
end
