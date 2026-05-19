class QuotesController < ApplicationController
  before_action :require_admin, only: %i[ index edit update destroy ]
  before_action :set_quote, only: %i[ show edit update destroy ]
  invisible_captcha only: [:create]

  # GET /quotes or /quotes.json
  def index
    @quotes = Quote.order(created_at: :desc)
  end

  # GET /quotes/1 or /quotes/1.json
  def show
  end

  # GET /quotes/new
  def new
    @quote = Quote.new
  end

  # GET /quotes/1/edit
  def edit
  end

  # POST /quotes or /quotes.json
  def create
    @quote = Quote.new(quote_params)

    respond_to do |format|
      if @quote.save
        QuoteMailer.new_quote(@quote).deliver_later
        format.html { redirect_to @quote, notice: "¡Gracias! Hemos recibido tu solicitud y nos pondremos en contacto contigo pronto." }
        format.json { render :show, status: :created, location: @quote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1 or /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to @quote, notice: "Quote was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @quote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1 or /quotes/1.json
  def destroy
    @quote.destroy!

    respond_to do |format|
      format.html { redirect_to quotes_path, notice: "Quote was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def quote_params
      params.expect(quote: [ :name, :phone, :email, :message, :status,
                             :provincia, :ciudad, :codigo_postal,
                             :titulo, :suministro_electrico, :tipo_alimentacion,
                             :tipo_vivienda, :tipo_vivienda_otro,
                             :superficie, :puntos_de_luz,
                             :tipo_reforma, :tipo_reforma_otro ])
    end
end
