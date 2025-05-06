# 🧠 BackEnd-Activity.Evaluative.API.RESTful

## 📘 Descrição do Projeto

Este projeto é uma API RESTful desenvolvida com Node.js e Express, utilizando PostgreSQL como banco de dados. A aplicação possui duas entidades principais: **Alunos** e **Salas**, permitindo operações CRUD completas, filtros específicos, upload de fotos, geração de relatórios e segurança via API Key.

## 🎯 Funcionalidades

- CRUD completo para as entidades Alunos e Salas.
- Filtro de Alunos por idade.
- Upload de fotos para Alunos.
- Geração de relatórios em PDF.
- Segurança de rotas com API Key.
- Documentação da API utilizando Postman.

## ⚙️ Tecnologias Utilizadas

- Node.js
- Express
- PostgreSQL
- Multer (Upload de arquivos)
- PDFKit
- Postman (Documentação)
- Dotenv (Variáveis de ambiente)

## 🗂️ Estrutura de Diretórios

```
├── src/
│   ├── config/
│   ├── controllers/
│   ├── database/
│   ├── models/
│   └── routes/
├── uploads/
├── .env
├── server.js
└── package.json
```

## 🚀 Como Executar o Projeto

1. Clone o repositório:

   ```bash
   git clone https://github.com/turco-vic/BackEnd-Activity.Evaluative.API.RESTful.git

## 👨‍💻 Configure as variáveis de ambiente no arquivo

1. Clone o repositório:

   ```bash
    PORT=3000
    DB_HOST=localhost
    DB_PORT=5432
    DB_NAME=seu_banco
    DB_USER=seu_usuario
    DB_PASSWORD=sua_senha
    API_KEY=sua_api_key

## 🔐 Segurança com API Key

As rotas protegidas requerem a inclusão de um cabeçalho **x-api-key** com a chave definida no arquivo **.env**.

## 📄 Documentação da API
A documentação completa da API está disponível no arquivo Postman Collection incluído no repositório. Para utilizá-la:

1. Abra o Postman.

2. Importe o arquivo (https://documenter.getpostman.com/view/37231923/2sB2j7cowk).

3. Utilize as rotas conforme descrito na coleção.

## 📦 Geração de Relatórios
A API permite a geração de relatórios em PDF para as entidades. As rotas específicas para geração de relatórios estão documentadas na coleção do Postman.

## 🖼️ Upload de Fotos
A entidade Aluno permite o upload de uma foto. Utilize a rota correspondente com o método POST e envie o arquivo no campo foto do formulário.

## 📚 Temas

- Entidades: Alunos e Salas
- Filtro disponível: Busca de Alunos por idade.
