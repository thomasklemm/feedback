class ChannelsController < ApplicationController

  before_filter :find_channel, except: :index

  def index
    @channels = Channel.all
  end

  def show
    @messages = @channel.messages
  end

  def new_message
    @message = @channel.messages.new
  end

  def create_message
    @message = @channel.messages.new(params[:message])
    if @message.save
      flash[:notice] = 'Message delivered.'
      html_message = render_to_string(partial: 'shared/message', locals: {message: @message})
      Pusher[@channel.name].trigger('new_message', html_message)
      redirect_to action: :new_message
    else
      render action: :new_message
    end
  end

protected

  def find_channel
    @channel = Channel.find(params[:id])
  end

end
