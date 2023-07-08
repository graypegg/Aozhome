module ApplicationHelper
  def hidden_redirect_field()
    return hidden_field_tag :redirect_back_to, params['redirect_back_to'] if params['redirect_back_to']
    ''
  end
end
