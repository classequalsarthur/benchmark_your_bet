class OptionsController < ApplicationController
    
    def create
        @question = Question.find(params[:question_id])
        
        @option = @question.options.create(option_param)
        
        redirect_to question_path(@question)
    end
    
    def upvote
        @question = Question.find(params[:question_id])
        @user = User.find(params[:user_id])
        
    end
    
    private
    
    def option_param
        params.require(:option).permit(:option_text)
    end
    
end
