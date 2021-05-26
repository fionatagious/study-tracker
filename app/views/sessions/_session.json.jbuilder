json.extract! session, :id, :language, :project, :created_at, :updated_at
json.url session_url(session, format: :json)
