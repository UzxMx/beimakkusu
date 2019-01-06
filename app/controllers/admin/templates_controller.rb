class Admin::TemplatesController < Admin::BaseController
  load_and_authorize_resource
  
  def index
    @q = Template.search(params[:q])
    @q.sorts = 'id desc' if @q.sorts.empty?
    @templates = @q.result.page(params[:page]).per(20)
  end

  def get_html
    tx = SecureRandom.uuid
    ControlChannel.get_html(current_user.id, tx, {url: params[:url], js: params[:js].to_i})
    render json: { tx: tx }
  end
end
