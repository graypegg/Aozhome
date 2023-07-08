class ApplicationController < ActionController::Base
  def safe_redirection_url(url, back_up_url = root_url)
    url_from(url) || back_up_url
  end

  def recover_flow_or_redirect_to(url, **options)
    if params['redirect_back_to']
      redirect_to safe_redirection_url(params['redirect_back_to'], url), **options
    else
      redirect_to url, **options
    end
  end
end
