<%page args="post"/>
<div class="blog_post">
  <a name="${post.slug}"></a>
  <h2 class="blog_post_title"><a href="${post.permapath()}" rel="bookmark" title="Permanent Link to ${post.title}">${post.date.strftime("%Y-%m-%d")}: ${post.title}</a></h2>
  <div class="post_prose">
    ${self.post_prose(post)}
  </div>
</div>

<%def name="post_prose(post)">
  ${post.content}
</%def>
