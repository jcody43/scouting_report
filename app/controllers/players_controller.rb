class PlayersController < ApplicationController
  def index

    def new
      @player = PlayerInfo.new
    end


    def fields
      params.require(:player).permit(:author, :player_name, :college,
                                     :position, :positions_flex, :height, :weight,
                                     :athletic_ability, :strengths, :weaknesses, :summary, :grade)
    end

    def create
      @player = PlayerInfo.new(params[:fields])
      if @player.save
        flash[:notice] = "Player Successfully Added"
         redirect_to players_url
       else render :new
      end
    end

  end
  end




