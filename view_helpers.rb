require 'bundler'
Bundler.require :default

module ViewHelpers
  def project_name
    'New Project'
  end

  def page_title
    [(@page_title || 'Welcome'), project_name].join(' | ')
  end
end