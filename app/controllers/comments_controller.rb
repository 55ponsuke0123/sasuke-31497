class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
      redirect_to "/patients/#{comment.patient.id}" 
  end

   def show
    @comments = Comments.all
    @comment = Comment.new
   end


  
  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, patient_id: params[:patient_id])
  end
end
