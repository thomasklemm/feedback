class ChannelsController < ApplicationController

  before_filter :load_institution, only: :index
  before_filter :load_channel, except: [:institution_index, :index]

  def index
    @channels = @institution.channels
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
      flash[:notice] = "Ihre Nachricht wurde erfolgreich gesendet. Vielen Dank!"
      html_message = render_to_string(partial: 'shared/message', locals: {message: @message})
      Pusher[@channel.name].trigger('new_message', html_message)
      redirect_to action: :new_message
    else
      flash.now.notice = "Bitte geben Sie eine Nachricht ein."
      render action: :new_message
    end
  end

protected

  def load_institution
    @institution = Institution.find(request.subdomain) unless request.subdomain == 'www'
  end

  def load_channel
    load_institution
    @channel = @institution.channels.find(params[:id])
  end

end
