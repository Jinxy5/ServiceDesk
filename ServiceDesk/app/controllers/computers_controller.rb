class ComputersController < ApplicationController
  before_action :set_computer, only: [:show, :edit, :update, :destroy]
  before_action :find_customer, only: [:show, :edit, :update, :destroy, :create, :index, :new, :set_computer]
  # GET /computers
  # GET /computers.json
  def find_customer
    @customer = Customer.find(params[:customer_id])
  end

  def index
    @computers = @customer.computers
  end

  # GET /computers/1
  # GET /computers/1.json
  def show
  end

  # GET /computers/new
  def new
    @computer = @customer.computers.new
  end

  # GET /computers/1/edit
  def edit
  end

  # POST /computers
  # POST /computers.json
  def create
    @computer = @customer.computers.new(computer_params)

    respond_to do |format|
      if @computer.save
        format.html { redirect_to [@customer, @computer], notice: 'Computer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @computer }
      else
        format.html { render action: 'new' }
        format.json { render json: @computer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /computers/1
  # PATCH/PUT /computers/1.json
  def update
    respond_to do |format|
      if @computer.update(computer_params)
        format.html { redirect_to [@customer, @computer], notice: 'Computer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @computer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computers/1
  # DELETE /computers/1.json
  def destroy
    @computer.destroy
    respond_to do |format|
      format.html { redirect_to computers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computer
      @computer = Customer.find(params[:customer_id]).computers.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def computer_params
      params.require(:computer).permit(:model)
    end
end
