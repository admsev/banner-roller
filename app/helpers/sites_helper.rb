module SitesHelper
  def site_banner_code(site)
    "<script src='#{code_site_url(site, :format => :js)}'></script>"
  end
end
