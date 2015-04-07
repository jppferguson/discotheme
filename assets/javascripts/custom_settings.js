
(function() {

  Handlebars.registerHelper('parentSiteTitle', function() {
    return Discourse.SiteSettings.parent_site_title;
  });

  Handlebars.registerHelper('parentSiteURL', function() {
    return Discourse.SiteSettings.parent_site_url;
  });

})();
