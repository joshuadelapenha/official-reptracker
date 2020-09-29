class ExercisesController < ApplicationController
    before_action :get_exercise, only: [:show, :edit, :update, :destroy]
    
    def index
        @exercises = Exercise.all
    end 

    def show
        @exercise = Exercise.find(params[:id])
    end

    def new
        @exercise = Exercise.new
    end
    

    def create
        @exercise = Exercise.new
        @exercise.name = params[:name]
        @exercise.category = params[:category]
        @exercise.save
        redirect_to exercise_path(@exercise)
    end

    def destroy
        @exercise.destroy
        redirect_to exercises_path
    end

    private
      def get_exercise
        @exercise = Exercise.find(params[:id])
      end
    
      def exercise_params
        params.require(:exercise).permit(:name, :category)
      end
end
