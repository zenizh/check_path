module Rails
  module CheckPath
    module Helper
      class << self
        def included(klass)
          _session = session

          paths.each do |path|
            define_method "#{path}?" do |args = nil|
              current_page?(_session.send(path, args))
            end
          end
        end

        private

        def paths
          paths = session.methods.select { |method| method.to_s.include?('_path') }
          paths.map(&:to_s)
        end

        def session
          ActionDispatch::Integration::Session.new(Rails.application)
        end
      end
    end
  end
end
