xml.instruct! :xml, :version => "1.0"
xml.feed(:xmlns => "http://www.w3.org/2005/Atom") do |feed|
  feed.title "Posts for #{h params[:q]} in #{h params[:forum]}"
  feed.link :href => request.url
  feed.updated((@posts.first || current_site).created_at.to_s(:rfc3339))
  feed.id  request.url
  for topic in @posts do
    feed.entry do |entry|
      entry.id forum_topic_path(topic.forum, topic, :anchor => dom_id(topic.first_post))
      entry.title topic.title
      entry.content topic.first_post.body
      entry.updated topic.first_post.updated_at.to_s(:rfc3339)
      entry.link :href => forum_topic_path(topic.forum, topic, :anchor => dom_id(topic.first_post))

      entry.author do |author|
        author.name topic.first_post.user
      end
    end
  end
end