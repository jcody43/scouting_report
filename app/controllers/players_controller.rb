class PlayersController < ApplicationController


    def new
      @player = PlayerInfo.new
    end


    private

    def playerParams
      params.require(:player).permit(:author, :player_name, :college,
                                     :position, :positions_flex, :height, :weight,
                                     :athletic_ability, :strengths, :weaknesses, :summary, :grade)
    end




    def create
      @player = PlayerInfo.new(params[:playerParams])
      if @player.save
        flash[:notice] = "Player Sucessfully Added"
        redirect_to @player
      else render 'new'
      end
    end




end
