<aside>
  <section>
    <h1 class="post_header_gradient theme_font">&Uacute;ltimos posts</h1>
    <ul>
      % for post in bf.config.blog.iter_posts_published(10):
      <li><a href="${post.path}">${post.title}</a></li>
      % endfor
    </ul>
  </section>
</aside>
