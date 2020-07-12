RSpec.describe "App Routes" do
  
  it "should access the main page" do
    get '/'
    expect(last_response).to be_ok
  end
  
    it "should access the set quiz route" do
    post '/set_quiz'
    expect(last_response).to be_ok
  end
  
  it "should access the add person route" do
    post '/add_person'
    expect(last_response).to be_redirect
  end
  
  it "should access the add theme route" do
    post '/add_theme'
    expect(last_response).to be_redirect
  end
  
  let(:name) { 'mark' }
  
  it "should add a person" do
    post "/add_person" , params = { :name => name }
    
    expect(last_response).to be_redirect
    follow_redirect!
  
    expect(last_response).to be_ok
    expect(last_response.body).to match(/mark/)
  end
end