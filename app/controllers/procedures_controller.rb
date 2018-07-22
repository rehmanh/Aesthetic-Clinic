class ProceduresController < ApplicationController

  before_action :require_signin, except: [:index, :show] # want non-admins only View rights
  before_action :require_admin_rights, except: [:index, :show] 

  def index
    @procedures = Procedure.all
  end

  def show
    @procedure = Procedure.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    @procedure = Procedure.find(params[:id])
  end

  def update
    @procedure  = Procedure.find(params[:id])
    @procedure.update(procedure_params)
    redirect_to @procedure # rails knows to go to the viewpage here
  end

  def new
    @procedure = Procedure.new
  end

  def create
    @procedure = Procedure.new(procedure_params)
    if @procedure.save
      redirect_to @procedure
    else
      render :new
    end
  end

  def destroy
    @procedure = Procedure.find(params[:id])
    @procedure.destroy
    redirect_to @procedure
  end

private
  
  def procedure_params
    procedure_params = params.require(:procedure).permit!
  end

end
