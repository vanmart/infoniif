RailsAdmin.config do |config|

  config.main_app_name = Proc.new { |controller| [ "InfoNiif", "BackOffice" ] }

  ### Popular gems integration
  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end

  

  ## == Cancan ==
  # config.authorize_with :cancan
  #config.current_user_method &:current_admin
  #config.current_user_method &:current_user

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.included_models = ['User' , 'Role', 'Company' , 'CompanyAsset' , 'AssetType' ]
end
