class UserPicsController < ApplicationController
  # GET /user_pics
  # GET /user_pics.json
  def index
    @user_pics = UserPic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_pics }
    end
  end

  # GET /user_pics/1
  # GET /user_pics/1.json
  def show
    @user_pic = UserPic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_pic }
    end
  end

  # GET /user_pics/new
  # GET /user_pics/new.json
  def new
    @user_pic = UserPic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_pic }
    end
  end

  # GET /user_pics/1/edit
  def edit
    @user_pic = UserPic.find(params[:id])
  end

  # POST /user_pics
  # POST /user_pics.json
  def create
    @user_pic = UserPic.new(params[:user_pic])

    respond_to do |format|
      if @user_pic.save
        format.html { redirect_to @user_pic, notice: 'User pic was successfully created.' }
        format.json { render json: @user_pic, status: :created, location: @user_pic }
      else
        format.html { render action: "new" }
        format.json { render json: @user_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_pics/1
  # PUT /user_pics/1.json
  def update
    @user_pic = UserPic.find(params[:id])

    respond_to do |format|
      if @user_pic.update_attributes(params[:user_pic])
        format.html { redirect_to @user_pic, notice: 'User pic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_pics/1
  # DELETE /user_pics/1.json
  def destroy
    @user_pic = UserPic.find(params[:id])
    @user_pic.destroy

    respond_to do |format|
      format.html { redirect_to user_pics_url }
      format.json { head :no_content }
    end
  end
end
