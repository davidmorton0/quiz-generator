require File.expand_path '../spec_helper.rb', __FILE__

describe "Index Page" do
  
  before do
    get '/'
  end
  
  it 'should have a list of people' do
    expect(last_response.body).to match(/Alice/)
    expect(last_response.body).to match(/Bob/)
    expect(last_response.body).to match(/Catherine/)
  end
  
  it 'should have a list of themes' do
    expect(last_response.body).to match(/Variables/)
    expect(last_response.body).to match(/Methods/)
    expect(last_response.body).to match(/Errors/)
  end
  
  it 'should have a button' do
    expect(last_response.body).to match(/button type=\"submit\"/)
  end
  
  it 'should have a button' do
    expect(last_response.body).to match(/button type=\"submit\"/)
  end
  
  it 'should have a name text box' do
    expect(last_response.body).to match(/input type=\"text\"/)
  end

  it 'should have a name text box' do
    expect(last_response.body).to match(/form\="nameform\"/)
  end
  
end