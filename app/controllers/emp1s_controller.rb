class Emp1sController < ApplicationController
  before_action :set_emp1, only: [:show, :edit, :update, :destroy]

  # GET /emp1s
  # GET /emp1s.json
  def index
    @emp1s = Emp1.all
  end

  # GET /emp1s/1
  # GET /emp1s/1.json
  def show
  end

  # GET /emp1s/new
  def new
    @emp1 = Emp1.new
  end

  # GET /emp1s/1/edit
  def edit
  end

  # POST /emp1s
  # POST /emp1s.json
  def create
    @emp1 = Emp1.new(emp1_params)

    respond_to do |format|
      if @emp1.save
        format.html { redirect_to @emp1, notice: 'Emp1 was successfully created.' }
        format.json { render :show, status: :created, location: @emp1 }
      else
        format.html { render :new }
        format.json { render json: @emp1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emp1s/1
  # PATCH/PUT /emp1s/1.json
  def update
    respond_to do |format|
      if @emp1.update(emp1_params)
        format.html { redirect_to @emp1, notice: 'Emp1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @emp1 }
      else
        format.html { render :edit }
        format.json { render json: @emp1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emp1s/1
  # DELETE /emp1s/1.json
  def destroy
    @emp1.destroy
    respond_to do |format|
      format.html { redirect_to emp1s_url, notice: 'Emp1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emp1
      @emp1 = Emp1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emp1_params
      params.require(:emp1).permit(:name1)
    end
end
