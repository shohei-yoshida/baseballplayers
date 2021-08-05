class PlayersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @players = Player.all
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
      redirect_to player_path(@player), notice: "登録が完了しました"
    else
      render :new
    end
    
  end

  def edit
     @player = Player.find(params[:id])
     if current_user.id != 1 
       redirect_to players_path, alert: "不正なアクセスです"
     end 
  end
  
  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to player_path(@player), notice: "選手詳細を更新しました。"
    else
      render :edit
    end
  end
  
  def search
    @players = Player.search(params[:search])
    render :index
  end
  
  private
  def player_params
    params.require(:player).permit(:name, :team, :number, :birthday, :old, :place, :height, :weight, :group, :position, :draht, :total, :career, :image)
  end
  
  
  
end
