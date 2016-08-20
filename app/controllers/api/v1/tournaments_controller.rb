module Api
  module V1
    class TournamentsController < ApplicationController
      def create
        tournament = Tournament.new(tournament_params)
        params[:team_ids].split(',').combination(2).to_a.each do |team_a, team_b|
          tournament.matches.build(team_a: team_a, team_b: team_b)
        end
        byebug
        if tournament.save
          redirect_to api_v1_tournament_path(tournament)
        end
      end

      def show
        render json: Tournament.find(params[:id])
      end

      private

      def tournament_params
        params.require(:tournament).permit(:name)
      end
    end
  end
end
