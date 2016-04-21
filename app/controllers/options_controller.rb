class OptionsController < ApplicationController
    
    def create
        @question = Question.find(params[:question_id])
        
        @option = @question.options.create(option_param)
        
        redirect_to question_path(@question)
    end
    
    def upvote
        @question = Question.find(params[:question_id])
        @option = Option.find(params[:option_id])
        Answer.create(user_id: current_user.id, question_id: @question.id, option_id: @option.id)
        redirect_to question_path(@question)
    end
    
    private
    
    def option_param
        params.require(:option).permit(:option_text)
    end
    
end
