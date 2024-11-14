class CreatePostJob
  include Sidekiq::Job

  def perform(name, title, content)
    Post.create!(name:, title:, content:)
  end
end
