class ScoresController < ApplicationController
  def show
    @score = Score.find(params[:id])
    @player = @score.player
  end
  
  def create
    @score = Score.new(score_params)
    if @score.save
      redirect_to score_path(@score), notice: "登録が完了しました"
    else
      render :new
    end
  end

  def new
    @score = Score.new
  end

  def edit
    @score = Score.find(params[:id])
     if current_user.id != 1 
       redirect_to players_path, alert: "不正なアクセスです"
     end 
  end
  
  def update
    @score = Score.find(params[:id])
    if @score.update(score_params)
      redirect_to score_path(@score), notice: "選手詳細を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    player = Player.find(params[:id])
    player.destroy
    redirect_to players_path(player), notice: "選手を削除しました。"
  end
  
  private
  def score_params
    params.require(:score).permit(:player_id, :season, :hits, :double, :triple, :home_run, :avarage, :points, :win, :lose, :hold, :close,)
  end
end

