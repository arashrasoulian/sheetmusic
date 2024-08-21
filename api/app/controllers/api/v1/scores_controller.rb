  # class ScoresController < ApplicationController
  #   def create
  #     @score = Score.new(score_params)
  #     @score.user = current_user # Assuming you have a current_user method

  #     if @score.save
  #       render json: { message: 'Score uploaded successfully', score: @score }, status: :ok
  #     else
  #       render json: { error: @score.errors.full_messages }, status: :unprocessable_entity
  #     end
  #   end

  #   private

  #   def score_params
  #     params.require(:score).permit(:pdf)
  #   end
  # end

module Api
  module V1
    class ScoresController < ApplicationController
      before_action :authenticate_user!

      def create
        @score = current_user.scores.build(score_params) # Assuming Score belongs_to User

        if @score.save
          render json: { message: 'Score uploaded successfully', score: @score }, status: :ok
        else
          render json: { error: @score.errors.full_messages.to_sentence }, status: :unprocessable_entity
        end
      end

      private

      def score_params
        params.require(:score).permit(:pdf)
      end
    end
  end
end
