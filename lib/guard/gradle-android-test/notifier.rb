module Guard
  class GradleAndroidTest
    class Notifier
      TITLE = 'Gradle Test Results'

      def notify(result)
        ::Guard::Notifier.notify(_summary(result), title: TITLE, image: _image(result))
      end

      private
      def _summary(result)
        result ? "Success" : "Failure"
      end

      def _image(result)
        result ? :success : :failed
      end
    end
  end
end

