class AppDelegate
  def hello_world_label
    @hello_world_label ||= begin
      frame = CGRectMake(20,200,280,40)
      label           = UILabel.alloc.initWithFrame(frame)
      label.text      = "Hello world"
      label.textColor = UIColor.whiteColor
      label.textAlignment = UITextAlignmentCenter
      label
    end
  end

  def window
    unless @window
      # setup root controller
      rootViewController = UIViewController.alloc.init
      # rootViewController.title = 'Hello'
      # rootViewController.view.backgroundColor = UIColor.blackColor

      # setup nav controller
      # navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

      # setup window
      @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

      # assign root controller
      # @window.rootViewController = navigationController
      @window.rootViewController = rootViewController
    end

    @window
  end

  def show_alert
    alert = UIAlertView.new
    alert.message = "Hello World!"
    alert.show
  end

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    window.addSubview(hello_world_label)
    window.makeKeyAndVisible

    true
  end
end
