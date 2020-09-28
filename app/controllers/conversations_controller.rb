class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    recipients = User.where(id: conversation_params[:recipients])
    conversation = current_user.send_message(recipients, conversation_params[:body], conversation_params[:subject]).conversation
    flash[:success] = "Your message was successfully sent!"
    redirect_to conversation_path(conversation)
  end

  def show
    @receipts = conversation.receipts_for(current_user)
    # mark conversation as read
    conversation.mark_as_read(current_user)
  end

  private

  def conversation_params
    params.require(:conversation).permit(:subject, :body,recipients:[])
  end


end

# class ConversationsController < ApplicationController
#   before_action :authenticate_user!
#   before_action :get_mailbox
#   before_action :get_conversation, except: [:index, :empty_trash]
#   before_action :get_box, only: [:index]

#   def index
#     if @box.eql? "inbox"
#       @conversations = @mailbox.inbox
#     elsif @box.eql? "sent"
#       @conversations = @mailbox.sentbox
#     else
#       @conversations = @mailbox.trash
#     end
  
#     @conversations = @conversations.paginate(page: params[:page], per_page: 10)
#   end
  
#   def get_box
#     if params[:box].blank? or !["inbox","sent","trash"].include?(params[:box])
#       params[:box] = 'inbox'
#     end
#     @box = params[:box]
#   end
  
  
#   def show
#   end

#   def reply
#     current_user.reply_to_conversation(@conversation, params[:body])
#     flash[:success] = 'Reply sent'
#     redirect_to conversation_path(@conversation)
#   end

#   def get_conversation
#     @conversation ||= @mailbox.conversations.find(params[:id])
#   end

#   def index
#     #@conversation = Conversation.all
#     @conversations = @mailbox.inbox.paginate(page: params[:page], per_page: 10)
#   end

#   def get_mailbox
#     @mailbox ||= current_user.mailbox
#   end

#   rescue_from ActiveRecord::RecordNotFound do
#     flash[:warning] = 'Resource not found.'
#     redirect_back_or root_path
#   end
  
#   def redirect_back_or(path)
#     redirect_to request.referer || path
#   end
  
#   def destroy
#     @conversation.move_to_trash(current_user)
#     flash[:success] = 'The conversation was moved to trash.'
#     redirect_to conversations_path
#   end
  
#   def restore
#     @conversation.untrash(current_user)
#     flash[:success] = 'The conversation was restored.'
#     redirect_to conversations_path
#   end

#   def empty_trash
#     @mailbox.trash.each do |conversation|
#       conversation.receipts_for(current_user).update_all(deleted: true)
#     end
#     flash[:success] = 'Your trash was cleaned!'
#     redirect_to conversations_path
#   end

#   def mark_as_read
#     @conversation.mark_as_read(current_user)
#     flash[:success] = 'The conversation was marked as read.'
#     redirect_to conversations_path
#   end

# end