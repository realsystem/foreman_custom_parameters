module ForemanCustomParameters
  class Engine < ::Rails::Engine
    isolate_namespace ForemanCustomParameters
    config.to_prepare do
      ::Host::Base.send :include, ForemanCustomParameters::AddDefaults
      ::Hostgroup.send :include, ForemanCustomParameters::AddDefaults
      ::Operatingsystem.send :include, ForemanCustomParameters::AddDefaults
      ::Domain.send :include, ForemanCustomParameters::AddDefaults
    end
  end
end