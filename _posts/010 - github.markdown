---
categories: Tutorial
date: 2014/04/04 22:03:00
updated: 2014/07/01 13:16:00
title: github
---
Instruções para usar este serviço com [GitHub](https://github.com):

Acesse o site do [GitHub](https://github.com) e crie uma conta. [GitHub](https://github.com) é um serviço comercial, use
por tua conta e risco. Também não usa software livre, para um serviço
semelhante que utiliza software livre, use [Gitorious](https://gitorious.org).

De fato, as instruções aqui servem para o [Gitorious](https://gitorious.org) também.

Existem tutoriais no próprio site do [GitHub](https://github.com) ensinando a criar conta. Existem
inclusive tutoriais para fazer todos os procedimentos descritos aqui (fork,
edição de arquivo, clone, commit, push, pull, etc.), e também existem listas
de e-mail como por exemplo a do [PyTchê](http://pytche.org) e a do [Matehackers](http://matehackers.org), onde tu pode
pedir ajuda sobre como usar ``git`` e [GitHub](https://github.com).

Após criar uma conta, é necessário usar o comando 'fork' no respositório que
se encontra no endereço <https://github.com/hiatobr/tem.blog.br>.

![Fork][1]

Isto serve para criar uma cópia do repositório que vai ser a base do teu
blog.

Satisfeita esta premissa, o mínimo que tu tem que fazer é alterar o arquivo
``_config.py`` para que teu blog seja aceito pelo administrador de
[Tem Blog .BR](http://tem.blog.br).

Os comentários no próprio arquivo deveriam ser auto explicativos. Se alguma
coisa não estiver clara... é culpa minha. Mande e-mail para [mim](../contato), e [eu](../contato) tenho
a obrigação de responder e corrigir qualquer coisa, porque [eu](../contato) botei isto no
ar, então eu que me vire pra deixar clara a minha mensagem.

Segue o conteúdo do arquivo que deve ser editado:

$$code(lang=python)
# -*- coding: utf-8 -*-

######################################################################
# Configuração para tem.blog.br
# Baseada na configuração padrão de www.blogofile.com
#
# Edite isto ANTES de pedir pra botar o site no ar.
#
######################################################################

## site_url -- URL do site.
#
# Aqui deve necessariamente constar um URL no formato:
# http://alguem.tem.blog.br OU https://alguem.tem.blog.br
#
# Altere 'alguem' pelo nome do teu site (ou deixe assim, se ninguém ainda
# tiver registrado o sub domínio 'alguem', tu pode ser x primeirx.
# PS: Ah, lembrei que 'ninguém' já tem blog em http://ninguem.tem.blog.br
#
# A parte '.tem.blog.br' deve ficar exatamente desta forma.
#
# Tu pode usar https:// ao invés de http:// para forçar o protocolo
# seguro, mas leve em consideração que o domínio tem.blog.br usa
# certificados da cacert.org, que podem exibir telas vermelhas em alguns
# navegadores desatualizados.
#
site.url = "http://alguem.tem.blog.br"

## site.author -- Nome dx autorx do site.
#
# Isto é opcional. Se deixado em branco "" o site fica sem autor/x.
#
# Caso alguma coisa seja colocada entre as aspas, então todo lugar onde
# o site gera nome de autor vai ficar com este nome aqui.
#
site.author = ""

#### Configurações do blog ####
#
# Só altere estas configurações se souber o que está fazendo. Se eu
# achar que tem alguma configuração que vai resultar em erro, não vou
# botar o teu site no ar.
#
# De fato, eu te incentivo a aprender sobre as configurações do blogofile
# e mexer aqui pra customizar teu site. Senão, serão todos sites iguais.
#
blog = plugins.blog
blog.enabled = True
blog.timezone = "America/Sao_Paulo"
site.file_ignore_patterns = [
".*/_.*",
".*/#.*",
".*~$",
".*/\..*\.swp$",
".*/\.(git|hg|svn|bzr)$",
".*/.(git|hg)ignore$",
".*/CVS$",
]
blog.auto_permalink.enabled = True
blog.auto_permalink.path = ":blog_path/:year/:month/:day/:title"
blog.custom_index = False
blog.post_excerpts.enabled = False
blog.post_default_filters = {
    "markdown": "syntax_highlight, markdown",
    "textile": "syntax_highlight, textile",
    "org": "syntax_highlight, org",
    "rst": "syntax_highlight, rst",
    "html": "syntax_highlight"
}
filters.markdown.extensions.def_list.enabled = True
filters.markdown.extensions.abbr.enabled = True
filters.markdown.extensions.footnotes.enabled = True
filters.markdown.extensions.fenced_code.enabled = True
filters.markdown.extensions.headerid.enabled = True
filters.markdown.extensions.tables.enabled = True
blog.template_path = "_templates/blog"
### Fim das configurações do blog ###

## blog_path -- Diretório do blog.
#
# Este é o caminho onde ficam as páginas do blog.
#
# Por exemplo, por padrão a primeira publicação ficaria em
# http://alguem.tem.blog.br/blog/tenho_blog
#
blog.path = "/blog"

## blog.posts_per_page -- Número de posts por página
blog.posts_per_page = 1


## blog_name -- Nome do blog.
blog.name = "Alguém Tem Blog .BR"

## blog_description -- Descrição do blog. Aparece no feed RSS.
blog.description = "Não tem blog? Aqui, \"alguém\" tem blog!"

## Disqus
#
# Crie uma conta em disqus.com para ter comentários no blog. Disqus é uma
# empresa comercial. Use o serviço por tua conta e risco. Mais instruções
# em http://ninguem.tem.blog.br/tutorial/disqus
#
# Para não usar isto, troque 'True' para 'False' e remova ou comente a
# linha blog.disqus.name
#
blog.disqus.enabled = True
blog.disqus.name = "alguemtemblogbr"

## blog_googleanaltics_id -- ID do Google Analytics
#blog.googleanlytics_id = "UA-XXXXX-X"
$$/code

Depois de editado este arquivo, envie e-mail para o [administrador](../contato) avisando
que o repositório está pronto. Assim que [eu](../contato) responder, teu blog
provavelmente estará no ar no endereço especificado na diretiva ``site.url``
do arquivo de configuração ``_config.py``.

Para enviar postagens para o blog, é só adicionar arquivos com a extensão
``.markdown`` (ou qualquer outra extensão reconhecida pelo [Blogofile](http://blogofile.com)) ao
diretório ``_posts`` do repositório.

No servidor onde está hospedado o [Tem Blog .BR](http://tem.blog.br) há um script agendado para
reconhecer automaticamente o envio de arquivos para este diretório.
Atualmente o serviço ``cron`` está configurado para verificar o repositório
de 6 em 6 horas, mas isto pode ser alterado, e dependendo do uso que tu
fizer do teu blog [eu](../contato) posso trocar isto, para verificar uma vez por dia, ou
uma vez por hora, etc.

Se restarem dúvidas, me procure nos canais que estão indicados na página de
[contato](../contato) do meu [blog](../).

[1]: ../../img/github_fork.png

