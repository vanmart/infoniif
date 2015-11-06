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

  config.included_models = ['User' , 'Role','CompanyType', 'Company' , 'CompanyAsset' , 'CompanyNature', 'CompanyAssetType', 'AccountingSoftware' ]

  config.model AccountingSoftware do
    label "Software Contable"
    label_plural "Software Contable"

    configure :companies do
      visible false
    end
  end


  config.model Company do
    label "Compañia"
    label_plural "Compañias"

    create do
      configure :company_assets do
        visible false
      end
    end

    edit do
      configure :company_assets do
        visible false
      end
    end
  end

  config.model CompanyAssetType do
    label "Tipo de activo"
    label_plural "Tipos de activos"

    configure :company_assets do
      visible false
    end
  end

  config.model CompanyAsset do
    label "Activo"
    label_plural "Activos"

    configure :company do
      visible false
    end
  end

  config.model Role do
    label "Rol"
    label_plural "Roles"

    create do
      configure :users do
        visible false
      end
    end

    edit do
      configure :users do
        visible false
      end
    end

    list do
      configure :users do
        visible false
      end
    end
  end

  config.model User do
    label "Usuario"
    label_plural "Usuarios"

    create do

      configure :reset_password_sent_at do
      visible false
      end

      configure :sign_in_count do
        visible false
      end

      configure :remember_created_at do
        visible false
      end

      configure :current_sign_in_at do
        visible false
      end

      configure :last_sign_in_at do
        visible false
      end

      configure :current_sign_in_ip do
        visible false
      end

      configure :last_sign_in_ip do
        visible false
      end

    end

    list do

      configure :reset_password_sent_at do
      visible false
      end

      configure :sign_in_count do
        visible false
      end

      configure :remember_created_at do
        visible false
      end

      configure :current_sign_in_at do
        visible false
      end

      configure :last_sign_in_at do
        visible false
      end

      configure :current_sign_in_ip do
        visible false
      end

      configure :last_sign_in_ip do
        visible false
      end

      configure :created_at do
        visible false
      end

      configure :updated_at do
        visible false
      end

    end

    show do

      configure :reset_password_sent_at do
      visible true
      end

      configure :name do
        visible true
      end

      configure :sign_in_count do
        visible true
      end

      configure :remember_created_at do
        visible true
      end

      configure :current_sign_in_at do
        visible true
      end

      configure :last_sign_in_at do
        visible true
      end

      configure :current_sign_in_ip do
        visible true
      end

      configure :last_sign_in_ip do
        visible false
      end

      configure :created_at do
        visible false
      end

      configure :updated_at do
        visible false
      end

    end


    edit do

      configure :reset_password_sent_at do
      visible false
      end

      configure :sign_in_count do
        visible false
      end

      configure :remember_created_at do
        visible false
      end

      configure :current_sign_in_at do
        visible false
      end

      configure :last_sign_in_at do
        visible false
      end

      configure :current_sign_in_ip do
        visible false
      end

      configure :last_sign_in_ip do
        visible false
      end

      configure :created_at do
        visible false
      end

      configure :updated_at do
        visible false
      end

    end

  end

end
