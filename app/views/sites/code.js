document.write("<a href='<%= click_site_banner_url(@banner.site, @banner) %>'><img src='<%= request.protocol + request.host_with_port + @banner.image.url %>' /></a>");
