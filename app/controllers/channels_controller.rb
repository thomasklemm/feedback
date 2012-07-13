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
      flash[:notice] = 'Success.'
      redirect_to @channel
    else
      render action: :new_message
    end
  end

protected

  def find_channel
    @channel = Channel.find(params[:id])
  end

end
