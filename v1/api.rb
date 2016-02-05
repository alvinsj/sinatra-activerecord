class API < Sinatra::Base
  namespace '/api/v1' do
    get '/' do
      content_type :json
      Link.all.to_json
    end
  end
end
