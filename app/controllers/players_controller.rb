class PlayersController < ApplicationController
  def index
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end
  
  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to player_path(@player), success: "登録が完了しました"
      # redirect_to root_path, success: "登録が完了しました"
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
    
  end

  def edit
  end
  
  private
  def player_params
    params.require(:player).permit(:name, :team, :number, :birthday, :old, :place, :height, :weight, :group, :position, :draht, :total, :career)
  end
  
end
