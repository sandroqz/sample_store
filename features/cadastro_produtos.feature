# language: pt

Funcionalidade: gerenciar o cadastro de produtos
    Como o administrador da loja
    Eu quero poder cadastrar, listar e apagar produtos
    Para que eu possa vender tudo e ficar rico!

    Cenário: visualizar produtos cadastrados
        Dado que existem os produtos "Livro do Urubatan", "Mega Video Explicando Tudo", "42 - A Resposta para a Vida o Universo e tudo mais"
        E que eu esteja na página de administração de produtos
        Então eu devo ver "Livro do Urubatan"
        E eu devo ver "Mega Video Explicando Tudo"
        E eu devo ver "42 - A Resposta para a Vida o Universo e tudo mais"

    Cenário: cadastrar novo produto
        Dado que existem os produtos "Livro do Urubatan", "Mega Video Explicando Tudo", "42 - A Resposta para a Vida o Universo e tudo mais"
        E que eu esteja na página de administração de produtos
        Quando eu clico em "Novo Produto"
        E preencho "Nome" com "Super Mega Novo Produto!"
        E preencho "Descrição" com "Este produto é muito bom mesmo, pode comprar que eu agarantcho"
        E eu pressiono "Salvar"
        Então eu devo ver "Livro do Urubatan"
        E eu devo ver "Mega Video Explicando Tudo"
        E eu devo ver "42 - A Resposta para a Vida o Universo e tudo mais"
        E eu devo ver "Super Mega Novo Produto!"

    Cenário: remover produto
        Dado que existem os produtos "Livro do Urubatan", "Mega Video Explicando Tudo", "42 - A Resposta para a Vida o Universo e tudo mais"
        E que eu esteja na página de administração de produtos
        Quando eu clico em "Remover" ao lado de "Mega Video Explicando Tudo"
        Então eu devo ver "Livro do Urubatan"
        E eu não devo ver "Mega Video Explicando Tudo"
        E eu devo ver "42 - A Resposta para a Vida o Universo e tudo mais"

    @javascript
    Cenário: cadastrar novo produto via Ajax
        Dado que existem os produtos "Livro do Urubatan", "Mega Video Explicando Tudo", "42 - A Resposta para a Vida o Universo e tudo mais"
        E que eu esteja na página de administração de produtos
        Quando eu clico em "Novo Produto"
        E preencho "Nome" com "Super Mega Novo Produto!"
        E preencho "Descrição" com "Este produto é muito bom mesmo, pode comprar que eu agarantcho"
        E eu pressiono "Salvar"
        Então eu devo ver "Livro do Urubatan"
        E eu devo ver "Mega Video Explicando Tudo"
        E eu devo ver "42 - A Resposta para a Vida o Universo e tudo mais"
        E eu devo ver "Super Mega Novo Produto!"

    @javacript
    Cenário: remover produto via Ajax
        Dado que existem os produtos "Livro do Urubatan", "Mega Video Explicando Tudo", "42 - A Resposta para a Vida o Universo e tudo mais"
        E que eu esteja na página de administração de produtos
        Quando eu clico em "Remover" ao lado de "Mega Video Explicando Tudo"
        Então eu devo ver "Livro do Urubatan"
        E eu não devo ver "Mega Video Explicando Tudo"
        E eu devo ver "42 - A Resposta para a Vida o Universo e tudo mais"
