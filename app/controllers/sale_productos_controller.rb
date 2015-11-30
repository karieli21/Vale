class SaleProductosController < ApplicationController
  before_action :set_sale_producto, only: [:show, :edit, :update, :destroy]

  # GET /sale_productos
  # GET /sale_productos.json
  def index
    @sale_productos = SaleProducto.all
  end

  # GET /sale_productos/1
  # GET /sale_productos/1.json
  def show
  end

  # GET /sale_productos/new
  def new
    @sale_producto = SaleProducto.new
  end

  # GET /sale_productos/1/edit
  def edit
  end

  # POST /sale_productos
  # POST /sale_productos.json
  def create
    @sale_producto = SaleProducto.new(sale_producto_params)

    respond_to do |format|
      if @sale_producto.save
        format.html { redirect_to @sale_producto, notice: 'Sale producto was successfully created.' }
        format.json { render :show, status: :created, location: @sale_producto }
      else
        format.html { render :new }
        format.json { render json: @sale_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sale_productos/1
  # PATCH/PUT /sale_productos/1.json
  def update
    respond_to do |format|
      if @sale_producto.update(sale_producto_params)
        format.html { redirect_to @sale_producto, notice: 'Sale producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale_producto }
      else
        format.html { render :edit }
        format.json { render json: @sale_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_productos/1
  # DELETE /sale_productos/1.json
  def destroy
    @sale_producto.destroy
    respond_to do |format|
      format.html { redirect_to sale_productos_url, notice: 'Sale producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_producto
      @sale_producto = SaleProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_producto_params
      params.require(:sale_producto).permit(:sale_id, :producto_id)
    end
end
