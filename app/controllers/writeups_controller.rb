class WriteupsController < ApplicationController
  def index
    @writeups = Writeup.all
  end

  def new
    @writeup = Writeup.new
  end

  def create
    writeup = Writeup.new(writeup_params)
    writeup.save!
    redirect_to writeups_path, notice: "登録完了"
  end

  def show
    @writeup = Writeup.find(params[:id])
  end

  def edit
    @writeup = Writeup.find(params[:id])
  end

  def update
    writeup = Writeup.find(params[:id])
    writeup.update!(writeup_params)
    redirect_to writeups_url, notice: "writeup「#{writeup.tournament_name}を更新しました」"
  end

  def destroy
    writeup = Writeup.find(params[:id])
    writeup.destroy
    redirect_to writeups_url, notice: "記事「#{writeup.tournament_name}を削除しました」"
  end

  private

  def writeup_params
    params.require(:writeup).permit(:tournament_name, :startdate, :problem_name, :problem_type, :description)
  end
end
