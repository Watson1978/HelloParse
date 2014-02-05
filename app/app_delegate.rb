class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    Parse.setApplicationId("<Application-Id>",
                           clientKey:"<Client-Key>")

    testObject = PFObject.objectWithClassName("TestObject")
    testObject["foo"] = "bar"
    testObject.saveInBackground
    true
  end
end
