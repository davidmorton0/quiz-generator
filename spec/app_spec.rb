require File.expand_path '../spec_helper.rb', __FILE__

describe "App Routes" do
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
    
    expect(last_response).to be_ok
  end
  
  let(:name) { 'mark' }
  
  xit "should add a person" do
    post "/add_person/#{name}"
  
    expect(last_response).to be_ok
    expect(last_response.body).to match(/mark/)
  end
  
  it "should access the add theme route" do
    post '/add_theme'
    expect(last_response).to be_ok
  end
  
end