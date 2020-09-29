class ExerciselogsController < ApplicationController
    before_action :get_exerciselog, only: [:show, :edit, :update, :destroy]

    def index
        @exerciselogs = Exerciselog.all
    end 

    def new
        @exerciselog = Exerciselog.new
        @lifters = Lifter.all
        @exercises = Exercise.all
    end

    def create
        exerciselog_params = params.require(:exerciselog).permit(:reps, :weight, :lifter_id, :exercise_id)
        
        @exerciselog = Exerciselog.create(exerciselog_params)

        # exerciselog = Exerciselog.find(params[:exerciselog][:lifter_id])

        # redirect_to lifter_path(lifter)
        redirect_to lifters_path
    end

    def edit
        @exerciselog = Exerciselog.find(params[:id])
        @lifters = Lifter.all
        @exercises = Exercise.all
        # byebug
    end

    def update
        exerciselog_params = params.require(:exerciselog).permit(:reps, :weight, :lifter_id, :exercise_id)
        
        @exerciselog.update(exerciselog_params)
        # redirect_to exerciselog_path(@exerciselog)
        redirect_to lifters_path
    end
    

    def show
        @exerciselog = Exerciselog.find(params[:id])
    end

    def destroy
        @exerciselog.destroy
        redirect_to exerciselogs_path
    end
    
    private
      def get_exerciselog
        @exerciselog = Exerciselog.find(params[:id])
      end
    
    #   def exerciselog_params
    #     params.require(:exerciselog).permit(:reps, :weight, :lifter_id, :exercise_id)
    #   end
end
