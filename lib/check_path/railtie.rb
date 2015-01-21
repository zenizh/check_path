module CheckPath
  class Railtie < ::Rails::Railtie
    initializer 'check_path' do
      ActiveSupport.on_load(:action_controller) do
        ActionView::Base.send :include, CheckPath::Base
      end
    end
  end
end
