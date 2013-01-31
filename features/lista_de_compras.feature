# language: pt

Funcionalidade: Selecionando produtos e adicionando ao carrinho de compras
    Como um cliente interessado nos produtos
    Com o objetivo de comprar produtos na loja
    Eu deveria poder selecionar produtos da loja virtual e adicioná-los ao meu carrinho de compras

    Cenário: Listar produtos
        Dado que existem os produtos "Livro do Urubatan", "Mega Video Explicando Tudo", "42 - A Resposta para a Vida o Universo e tudo mais"
        E que eu esteja na página inicial
        Então eu devo ver "Livro do Urubatan"
        E eu devo ver "Mega Video Explicando Tudo"
        E eu devo ver "42 - A Resposta para a Vida o Universo e tudo mais"

    Cenário: Visualizar detalhes dos produtos
        Dado que existe o produto "Livro do Urubatan" com a descrição "O melhor livro de todos os tempos"
        E que eu esteja na página inicial
        Quando eu clico em "Livro do Urubatan"
        Então eu devo ver "Livro do Urubatan"
        E eu devo ver "O melhor livro de todos os tempos"
        E eu devo ver "Detalhes do Livro:"

    Cenário: Adicionar produto ao carrinho de compras
        Dado que existe o produto "Livro do Urubatan" com a descrição "O melhor livro de todos os tempos"
        E que eu esteja nos detalhes do "Livro do Urubatan"
        Quando eu clico em "Comprar"
        Então "Livro do Urubatan" deve aparecer no carrinho de compras
