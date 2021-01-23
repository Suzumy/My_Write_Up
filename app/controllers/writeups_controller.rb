class WriteupsController < ApplicationController
  def index
  end

  def new
    @writeup = Writeup.new
  end

  def create
    writeup = Writeup.new(writeup_params)
    writeup.save!
    redirect_to writeups_path, notice: "登録完了"
  end

  private

  def writeup_params
    params.require(:writeup).permit(:tournament_name, :startdate, :problem_name, :problem_type, :description)
  end
end
