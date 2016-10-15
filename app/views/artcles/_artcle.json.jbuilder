json.extract! artcle, :id, :title, :auther, :body, :created_at, :updated_at
json.url artcle_url(artcle, format: :json)