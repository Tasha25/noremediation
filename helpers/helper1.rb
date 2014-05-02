helpers do

  def active_page?(path='')
    request.path_info =='/'+path ? 'active_page': nil
  end
end
