module ProjectsHelper

require 'httparty'

class RavelryT
  include HTTParty
  base_uri 'api.ravelry.com'
  format :json

  def self.get_rav_projects(user, key)
    status = "frogged in-progress hibernating finished"
    get('/projects/'+user+'/progress.json', :query => {:key => key, :status => status, :notes => 'false' })
  end
end


end
