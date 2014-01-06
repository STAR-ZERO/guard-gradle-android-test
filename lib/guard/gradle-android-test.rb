require 'guard'
require 'guard/plugin'

module Guard
  class GradleAndroidTest < Plugin
    require 'guard/gradle-android-test/notifier'

    def initialize(options = {})
      super
      @notifier = Notifier.new
    end

    def start
      UI.info "Guard::GradleAndroidTest is running"
    end

    def run_all
      _run
    end

    def run_on_changes(paths)
      _run
    end

    def self.template(plugin_location)
      # Guardfile path
      File.read("#{ plugin_location }/lib/guard/gradle-android-test/templates/Guardfile")
    end

    private
    def _run
      UI.info "Running..."
      result = Kernel.system("./gradlew --daemon test -i")
      @notifier.notify(result)
    end
  end
end
