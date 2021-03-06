class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all.order("created_at desc")
  end

  # GET /users/1
  # GET /users/1.json
  def show
    #ここに注目rjhapvdhcoauh oaduo
    #vhoduxghvoa uhcou
=======

>>>>>>> hoge
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    #ここに注目hfdoauvhhoauf
    #こここにdhfぽあうvhどうあhゔぉうhゔぉうあ
    #vhadopchvoaudhoahodi
    #h doacxuhg
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: '上書き' }
        format.json { render :show, status: :created, location: @user }
        flash[:success] = "成功しました"
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        fash[:danger] = "失敗しました"
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
        flash[:success] = "更新しました"
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
      flash[:success] = "成功しました"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name)
    end
end
