json.extract! articulo, :id, :titulo, :contenido, :usuario_id, :created_at, :updated_at
json.url articulo_url(articulo, format: :json)
