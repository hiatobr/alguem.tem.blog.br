---
categories: tutorial
date: 2014/04/04 22:03:00
updated: 2014/07/01 21:30:00
title: github
---
Instru&ccedil;&otilde;es para usar este servi&ccedil;o com [GitHub](https://github.com):

Acesse o site do [GitHub](https://github.com) e crie uma conta. [GitHub](https://github.com) &eacute; um servi&ccedil;o comercial, use
por tua conta e risco. Tamb&eacute;m n&atilde;o usa software livre, para um servi&ccedil;o
semelhante que utiliza software livre, use [Gitorious](https://gitorious.org).

De fato, as instru&ccedil;&otilde;es aqui servem para o [Gitorious](https://gitorious.org) tamb&eacute;m.

Existem tutoriais no pr&oacute;prio site do [GitHub](https://github.com) ensinando a criar conta. Existem
inclusive tutoriais para fazer todos os procedimentos descritos aqui (fork,
edi&ccedil;&atilde;o de arquivo, clone, commit, push, pull, etc.), e tamb&eacute;m existem listas
de e-mail como por exemplo a do [PyTch&ecirc;](http://pytche.org) e a do [Matehackers](http://matehackers.org), onde tu pode
pedir ajuda sobre como usar ``git`` e [GitHub](https://github.com).

Ap&oacute;s criar uma conta, &eacute; necess&aacute;rio usar o comando 'fork' no resposit&oacute;rio que
se encontra no endere&ccedil;o <https://github.com/hiatobr/tem.blog.br>.

&excl;[Fork][1]

Isto serve para criar uma c&oacute;pia do reposit&oacute;rio que vai ser a base do teu
blog.

Satisfeita esta premissa, o m&iacute;nimo que tu tem que fazer &eacute; alterar o arquivo
``_config.py`` para que teu blog seja aceito pelo administrador de
[Tem Blog .BR](http://tem.blog.br).

Os coment&aacute;rios no pr&oacute;prio arquivo deveriam ser auto explicativos. Se alguma
coisa n&atilde;o estiver clara... &eacute; culpa minha. Mande e-mail para [mim](../contato), e [eu](../contato) tenho
a obriga&ccedil;&atilde;o de responder e corrigir qualquer coisa, porque [eu](../contato) botei isto no
ar, ent&atilde;o eu que me vire pra deixar clara a minha mensagem.

Segue o conte&uacute;do do arquivo que deve ser editado:

$$code(lang=python)
# -*- coding: utf-8 -*-

######################################################################
# Configura&ccedil;&atilde;o para tem.blog.br
# Baseada na configura&ccedil;&atilde;o padr&atilde;o de www.blogofile.com
#
# Edite isto ANTES de pedir pra botar o site no ar.
#
######################################################################

## site_url -- URL do site.
#
# Aqui deve necessariamente constar um URL no formato:
# http://alguem.tem.blog.br OU https://alguem.tem.blog.br
#
# Altere 'alguem' pelo nome do teu site (ou deixe assim, se ningu&eacute;m ainda
# tiver registrado o sub dom&iacute;nio 'alguem', tu pode ser x primeirx.
# PS: Ah, lembrei que 'ningu&eacute;m' j&aacute; tem blog em http://ninguem.tem.blog.br
#
# A parte '.tem.blog.br' deve ficar exatamente desta forma.
#
# Tu pode usar https:// ao inv&eacute;s de http:// para for&ccedil;ar o protocolo
# seguro, mas leve em considera&ccedil;&atilde;o que o dom&iacute;nio tem.blog.br usa
# certificados da cacert.org, que podem exibir telas vermelhas em alguns
# navegadores desatualizados.
#
site.url = &quot;http://alguem.tem.blog.br&quot;

## site.author -- Nome dx autorx do site.
#
# Isto &eacute; opcional. Se deixado em branco &quot;&quot; o site fica sem autor/x.
#
# Caso alguma coisa seja colocada entre as aspas, ent&atilde;o todo lugar onde
# o site gera nome de autor vai ficar com este nome aqui.
#
site.author = &quot;&quot;

#### Configura&ccedil;&otilde;es do blog ####
#
# S&oacute; altere estas configura&ccedil;&otilde;es se souber o que est&aacute; fazendo. Se eu
# achar que tem alguma configura&ccedil;&atilde;o que vai resultar em erro, n&atilde;o vou
# botar o teu site no ar.
#
# De fato, eu te incentivo a aprender sobre as configura&ccedil;&otilde;es do blogofile
# e mexer aqui pra customizar teu site. Sen&atilde;o, ser&atilde;o todos sites iguais.
#
blog = plugins.blog
blog.enabled = True
blog.timezone = &quot;America/Sao_Paulo&quot;
site.file_ignore_patterns = [
&quot;.*/_.*&quot;,
&quot;.*/#.*&quot;,
&quot;.*~$&quot;,
&quot;.*/\..*\.swp$&quot;,
&quot;.*/\.(git|hg|svn|bzr)$&quot;,
&quot;.*/.(git|hg)ignore$&quot;,
&quot;.*/CVS$&quot;,
]
blog.auto_permalink.enabled = True
blog.auto_permalink.path = &quot;:blog_path/:year/:month/:day/:title&quot;
blog.custom_index = False
blog.post_excerpts.enabled = False
blog.post_default_filters = {
    &quot;markdown&quot;: &quot;syntax_highlight, markdown&quot;,
    &quot;textile&quot;: &quot;syntax_highlight, textile&quot;,
    &quot;org&quot;: &quot;syntax_highlight, org&quot;,
    &quot;rst&quot;: &quot;syntax_highlight, rst&quot;,
    &quot;html&quot;: &quot;syntax_highlight&quot;
}
filters.markdown.extensions.def_list.enabled = True
filters.markdown.extensions.abbr.enabled = True
filters.markdown.extensions.footnotes.enabled = True
filters.markdown.extensions.fenced_code.enabled = True
filters.markdown.extensions.headerid.enabled = True
filters.markdown.extensions.tables.enabled = True
blog.template_path = &quot;_templates/blog&quot;
### Fim das configura&ccedil;&otilde;es do blog ###

## blog_path -- Diret&oacute;rio do blog.
#
# Este &eacute; o caminho onde ficam as p&aacute;ginas do blog.
#
# Por exemplo, por padr&atilde;o a primeira publica&ccedil;&atilde;o ficaria em
# http://alguem.tem.blog.br/blog/tenho_blog
#
blog.path = &quot;/blog&quot;

## blog.posts_per_page -- N&uacute;mero de posts por p&aacute;gina
blog.posts_per_page = 1


## blog_name -- Nome do blog.
blog.name = &quot;Algu&eacute;m Tem Blog .BR&quot;

## blog_description -- Descri&ccedil;&atilde;o do blog. Aparece no feed RSS.
blog.description = &quot;N&atilde;o tem blog&quest; Aqui, \&quot;algu&eacute;m\&quot; tem blog&excl;&quot;

## Disqus
#
# Crie uma conta em disqus.com para ter coment&aacute;rios no blog. Disqus &eacute; uma
# empresa comercial. Use o servi&ccedil;o por tua conta e risco. Mais instru&ccedil;&otilde;es
# em http://ninguem.tem.blog.br/tutorial/disqus
#
# Para n&atilde;o usar isto, troque 'True' para 'False' e remova ou comente a
# linha blog.disqus.name
#
blog.disqus.enabled = True
blog.disqus.name = &quot;alguemtemblogbr&quot;

## blog_googleanaltics_id -- ID do Google Analytics
#blog.googleanlytics_id = &quot;UA-XXXXX-X&quot;
$$/code

Depois de editado este arquivo, envie e-mail para o [administrador](../contato) avisando
que o reposit&oacute;rio est&aacute; pronto. Assim que [eu](../contato) responder, teu blog
provavelmente estar&aacute; no ar no endere&ccedil;o especificado na diretiva ``site.url``
do arquivo de configura&ccedil;&atilde;o ``_config.py``.

Para enviar postagens para o blog, &eacute; s&oacute; adicionar arquivos com a extens&atilde;o
``.markdown`` (ou qualquer outra extens&atilde;o reconhecida pelo [Blogofile](http://blogofile.com)) ao
diret&oacute;rio ``_posts`` do reposit&oacute;rio.

No servidor onde est&aacute; hospedado o [Tem Blog .BR](http://tem.blog.br) h&aacute; um script agendado para
reconhecer automaticamente o envio de arquivos para este diret&oacute;rio.
Atualmente o servi&ccedil;o ``cron`` est&aacute; configurado para verificar o reposit&oacute;rio
de 6 em 6 horas, mas isto pode ser alterado, e dependendo do uso que tu
fizer do teu blog [eu](../contato) posso trocar isto, para verificar uma vez por dia, ou
uma vez por hora, etc.

Se restarem d&uacute;vidas, me procure nos canais que est&atilde;o indicados na p&aacute;gina de
[contato](../contato) do meu [blog](../).

[1]: ../../img/github_fork.png

