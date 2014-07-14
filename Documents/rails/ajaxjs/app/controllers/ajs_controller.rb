class AjsController < ApplicationController
  before_action :set_aj, only: [:show, :edit, :update, :destroy]

def test
end



  # GET /ajs
  # GET /ajs.json
  def index
    @ajs = Aj.all
    respond_to do |format|
        format.html   # index.html.erb
        #format.json { render json: @ajs, status: :created, location: @ajs }
	      format.json { render json: @ajs, status: :created}
      end
  end

  # GET /ajs/1
  # GET /ajs/1.json
  def show
   @aj = Aj.find params[:id]
      respond_to do |format|
      format.html #new.html.erb
      format.json { render json: @ajs}
    end
  end

  # GET /ajs/new
  def new
   @aj = Aj.new
   respond_to do |format|
      format.html #new.html.erb
      #format.json { render json: @ajs}
    end

  end

  # GET /ajs/1/edit
  def edit
    @aj = Aj.find params[:id]
  end

  # POST /ajs
  # POST /ajs.json
  def create
    @aj = Aj.new(aj_params)
    @aj.save
     redirect_to ajs_path
    # respond_to do |format|
    #   if @aj.save
    #     format.html 
    #     format.json { render json: @ajs, status: :created }
    #   else
    #    format.html { render :new }
    #     format.json { render json: @aj.errors, status: :unprocessable_entity }
	
    #   end
    # end
    
  end

  # PATCH/PUT /ajs/1
  # PATCH/PUT /ajs/1.json
  def update
        
     @aj = Aj.find params[:id]
    respond_to do |format|
      if @aj.update(aj_params)
        format.html { redirect_to @aj, notice: 'Aj was successfully updated.' }
        #format.json { render :show, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @aj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ajs/1
  # DELETE /ajs/1.json
  def destroy
    @aj = Aj.find params[:id]
    @aj.destroy
     respond_to do |format|
       format.html  { render :index, notice: 'Aj was successfully updated.' }
       format.json { head :no_content }
     end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aj
      @aj = Aj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aj_params
      params.require(:aj).permit(:name, :title, :content)
    end
end
