class LoginsController < ApplicationController
  before_action :set_login, only: [:show, :edit, :update, :destroy]

  # GET /logins
  def index
    @logins = Login.page(params[:page]).per(10)
  end

  # GET /logins/1
  def show
  end

  # GET /logins/new
  def new
    @login = Login.new
  end

  # GET /logins/1/edit
  def edit
  end

  # POST /logins
  def create
    @login = Login.new(login_params)

    if @login.save
      redirect_to @login, notice: 'Login was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /logins/1
  def update
    if @login.update(login_params)
      redirect_to @login, notice: 'Login was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /logins/1
  def destroy
    @login.destroy
    redirect_to logins_url, notice: 'Login was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login
      @login = Login.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def login_params
      params.require(:login).permit(:useremail, :usertype, :password, :reader_id)
    end
end
