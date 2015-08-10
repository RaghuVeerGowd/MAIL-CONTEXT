json.array!(@mail_contexts) do |mail_context|
  json.extract! mail_context, :id, :email, :message_body, :starts_at, :ends_at, :time_part, :user_id
  json.url mail_context_url(mail_context, format: :json)
end
