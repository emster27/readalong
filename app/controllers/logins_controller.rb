class LoginsController < ApplicationController
  before_action :set_login, only: %i[show edit update destroy]

  def index
    @q = Login.ransack(params[:q])
    @logins = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def show; end

  def new
    @login = Login.new
  end

  def edit; end

  def create
    @login = Login.new(login_params)

    if @login.save
      redirect_to @login, notice: "Login was successfully created."
    else
      render :new
    end
  end

  def update
    if @login.update(login_params)
      redirect_to @login, notice: "Login was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @login.destroy
    redirect_to logins_url, notice: "Login was successfully destroyed."
  end

  private

  def set_login
    @login = Login.find(params[:id])
  end

  def login_params
    params.require(:login).permit(:useremail, :usertype, :password,
                                  :reader_id)
  end
end
