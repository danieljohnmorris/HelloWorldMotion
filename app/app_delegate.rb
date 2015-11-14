class AppDelegate
  def window
    @window ||= UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  end

  def show_alert
    alert = UIAlertView.new
    alert.message = "Hello World!"
    alert.show
  end

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    true
  end
end
