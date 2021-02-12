require 'redmine'
require_dependency 'wiki_patches/hook' #Apply views modifications

Rails.configuration.to_prepare do 

  #Apply patch on wiki controller
  require_dependency 'wiki_controller'
  unless WikiController.included_modules.include? WikiPatches::WikiControllerPatch
    WikiController.send(:include, WikiPatches::WikiControllerPatch)
  end

  #Apply patch on wiki page
  require_dependency 'wiki_page'
  unless WikiPage.included_modules.include? WikiPatches::WikiPagePatch
    WikiPage.send(:include, WikiPatches::WikiPagePatch)
  end

  require_dependency 'application_helper'
  unless ApplicationHelper.included_modules.include? WikiPatches::ApplicationHelperPatch
    ApplicationHelper.send(:include, WikiPatches::ApplicationHelperPatch)
  end
end

Redmine::Plugin.register :redmine_private_wiki do
  name 'Private Wiki plugin'
  author '0x2c4'
  description 'Add pprivet option to wiki pages'
  version '0.3.0'
  url 'https://github.com/0x2c4/redmine_private_wiki'

  #Add permissions
  project_module :wiki do
    permission :view_privates_wiki, {:wiki => [:show, :edit]}
    permission :manage_privates_wiki, {:wiki => :change_privacy}, :require => :member
  end
end
