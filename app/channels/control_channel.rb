class ControlChannel < ApplicationCable::Channel
  Broadcasting = "ipc"
  class << self
    def get_html(user_id, tx, params)
      ActionCable.server.broadcast(Broadcasting, command: "get_html", user_id: user_id, tx: tx, params: params)
    end
  end
  def subscribed
    logger.debug("subscribed: #{params}")
    stream_from "ipc"
  end

  def unsubscribed
    logger.debug("unsubscribed")
  end

  def test(data)
    logger.debug("test: #{params} #{data}")
  end

  def on_get_html(data)
    logger.debug("user_id: #{data['user_id']}")
    TemplateChannel.broadcast_to(User.find(data['user_id']), command: "on_get_html", html: data['html'], tx: data['tx'])
  end
end