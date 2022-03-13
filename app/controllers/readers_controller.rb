class ReadersController < ApplicationController
  before_action :set_reader, only: %i[show edit update destroy]

  # GET /readers
  def index
    @q = Reader.ransack(params[:q])
    @readers = @q.result(distinct: true).includes(:bookmarks).page(params[:page]).per(10)
  end

  # GET /readers/1
  def show
    @bookmark = Bookmark.new
  end

  # GET /readers/new
  def new
    @reader = Reader.new
  end

  # GET /readers/1/edit
  def edit; end

  # POST /readers
  def create
    @reader = Reader.new(reader_params)

    if @reader.save
      redirect_to @reader, notice: "Reader was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /readers/1
  def update
    if @reader.update(reader_params)
      redirect_to @reader, notice: "Reader was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /readers/1
  def destroy
    @reader.destroy
    redirect_to readers_url, notice: "Reader was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reader
    @reader = Reader.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def reader_params
    params.require(:reader).permit(:reader_name, :email)
  end
end
