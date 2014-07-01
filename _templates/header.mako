<header>
  <div id="header" class="header_gradient theme_font">
    <h1><a href="${bf.util.site_path_helper()}">${bf.config.blog.name}</a></h1>
    <h2>${bf.config.blog.description}</h2>
  </div>
  <div id="navigation" class="grid_12">
<%
def nav_class(path):
   render_path = bf.template_context.render_path.rsplit("/index.html")[0]
   if render_path == path or (path == "/" and render_path == "."):
       return "selected"
   return ""
%>
<ul class="theme_font">
	<li><a href="${bf.util.site_path_helper()}"
		class="${nav_class(bf.util.site_path_helper())}">In&iacute;cio</a></li>
	<li><a href="${bf.util.site_path_helper(bf.config.blog.path,'contato')}"
		class="${nav_class(bf.util.site_path_helper(bf.config.blog.path,'contato'))}">Contato</a></li>
	<li><a href="${bf.util.site_path_helper(bf.config.blog.path,'archive')}"
		class="${nav_class(bf.util.site_path_helper(bf.config.blog.path,'archive'))}">Arquivo</a></li>
	<li><a href="${bf.util.site_path_helper(bf.config.blog.path,'category','noticia')}"
		class="${nav_class(bf.util.site_path_helper(bf.config.blog.path,'category','noticia'))}">Noticias</a></li>
	<li><a href="${bf.util.site_path_helper(bf.config.blog.path,'category','tutorial')}"
		class="${nav_class(bf.util.site_path_helper(bf.config.blog.path,'category','tutorial'))}">Tutoriais</a></li>
	<li><a href="${bf.util.site_path_helper(bf.config.blog.path,'category','pessoal')}"
		class="${nav_class(bf.util.site_path_helper(bf.config.blog.path,'category','pessoal'))}">Sobre o autor</a></li>
	<li>|</li>
	<li><a href="http://quem.tem.blog.br" target="_blank">Quem tem blog&quest;</a></li>
</ul>
</div>
</header>
