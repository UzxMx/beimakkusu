class TemplateChannel < ApplicationCable::Channel
  def subscribed
    logger.debug("subscribed")
    stream_for current_user
  end

  def unsubscribed
    logger.debug("unsubscribed")
  end

  def test(data)
    logger.debug("test: #{params} #{data}")
  end
end