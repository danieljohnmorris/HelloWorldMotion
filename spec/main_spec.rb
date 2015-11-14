describe "Application 'Hello'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "has one window" do
    puts @app.windows
    @app.windows.size.should == 1
  end
end
