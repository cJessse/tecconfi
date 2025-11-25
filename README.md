# TecConfi - Manutenção de Computadores

Site institucional com sistema de orçamentos e serviços.

## Estrutura do Projeto

```
tecconfi/
├── index.html          - Página principal
├── admin.html          - Painel administrativo
├── banco_tecconfi.sql  - Script do banco de dados
├── img/                - Imagens do site
└── back-end/
    ├── conexao.php           - Conexão com o banco
    ├── listar_servicos.php   - Lista serviços
    ├── curtir_servico.php    - Curtir serviço
    ├── inserir_orcamento.php - Inserir orçamento
    ├── listar_orcamentos.php - Lista orçamentos
    └── aprovar_orcamento.php - Aprovar orçamento
```

## Banco de Dados

Nome do banco: `banco_tec`

### Tabelas

**servicos**
- id, titulo, descricao, preco, imagem, curtidas, data_cadastro

**orcamentos**
- id, nome, email, telefone, servico, descricao, aprovado, data_cadastro

## Como Executar

1. Inicie o XAMPP (Apache e MySQL)
2. Importe o arquivo `banco_tecconfi.sql` no phpMyAdmin
3. Acesse: `http://localhost/tecconfi/`

## Funcionalidades

### Serviços
- Exibe serviços do banco de dados
- Botão de curtir que incrementa contador
- `UPDATE servicos SET curtidas = curtidas + 1 WHERE id = :id`

### Orçamentos
- Formulário para solicitar orçamento
- Painel admin para visualizar todos os orçamentos
- Botão para aprovar orçamento (muda status de 0 para 1)
- `UPDATE orcamentos SET aprovado = 1 WHERE id = :id`
