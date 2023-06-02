![unicred_headers_img](https://static.wixstatic.com/media/49da48_cab7f89400e846cb8e61eabfd81caa32~mv2.jpg/v1/fill/w_858,h_452,al_c/49da48_cab7f89400e846cb8e61eabfd81caa32~mv2.jpg)

<h1 align="center">  Automação de Testes com Robot Framework </h1>

![version_badge](https://img.shields.io/badge/Automation%20Version-V1.0.0-brightgreen) ![status_badge](https://img.shields.io/badge/STATUS-IN%20PROGRESS-brightgreen)

# Sumário

> 1. [Objetivo](#objetivo)
> 2. [Executando o Job da automação (GitHub)](#executando-o-job-da-automacao)
>       1. [Passo 1: Acessar a página para rodar o job no Github Actions](#acessar-a-pagina-para-rodar-o-job-no-azure)
>       2. [Passo 2: Filtrar e executar a pipeline](#selecionar-configurações-para-a-execução-dos-testes)
>       3. [Passo 3: Visualizar/baixar relatório da execução dos testes](#visualizar-baixar-relatório-da-execução-dos-testes)
> 3. [Executando na máquina local](#executando-na-máquina-local)
>       1. [Passo 2: Instalando as dependências do projeto](#pre_requisitos)
>       2. [Passo 3: Executando a automação](#executando_testes_manual)
>       3. [Passo 4 (opcional): Executando testes específicos da automação](#executando_testes_com_tag)
> 4. [Tags](#Tags_dos_testes_automatizados)

<a id="objetivo"></a>
<h1>  1. Objetivo </h1>

```
Validar de forma automática o funcionamento e a qualidade do projeto utilizando Robot Framework e python.
```

<a id="executando-o-job-da-automacao"></a>
# 2. Executando o Job da automação (Github)
## Execução oficial

<a id="acessar-a-pagina-para-rodar-o-job-no-azure"></a>
## 1 - Acessar a página para rodar o job no GitHub

 ```
 Navegue até a página "Actions" do repositório. 
 Você pode encontrar o link para a página "Actions" na parte superior da página inicial do repositório.
 ```
<a id="selecionar-configurações-para-a-execução-dos-testes"></a>
## 2 - Executar pipeline
 ```
1. Na página "Actions", Procure pela pipeline "Robot Framework Automation" ao lado esquerdo.

2. Ao lado da pipeline, você verá o botão "Run workflow". Clique nesse botão para acionar manualmente a execução da pipeline.

3. Após iniciar a execução manual da pipeline, você poderá acompanhar o progresso na página "Actions". Serão exibidos os logs de execução e você poderá verificar se há erros ou problemas durante a execução.

4. Quando a execução da pipeline for concluída, você poderá verificar os resultados, como artefatos gerados ou registros de saída, dependendo das configurações da pipeline.
 ```
<a id="visualizar-baixar-relatório-da-execução-dos-testes"></a>
## 3 - Visualizar/baixar relatório da execução dos testes

 <b>Na página do projeto</b>
 ```
 Apos a execução da pipeline é publicado o report da execução
 ```
 * Todos os registros de jobs executados ficam nessa página.

 ```
 Na area superior tera uma sessão de "Artifacts"
 ```
 * Nessa tela, será exibido os reports que foram executados.
 * Clicando nos tres ponto no final do report podera fazer o download do report em format .zip

<a id="executando-na-máquina-local"></a>
# 3. Executando na máquina local

<a id="Execução_não_oficial"></a>

<h2><b><a id=pre_requisitos>Pré-requisitos:</a></b></h2>

> Antes de executar a automação de testes manualmente, você precisará ter o seguinte configurado em seu ambiente de desenvolvimento:
<h1></h1>

> <b>Python:</b> Certifique-se de ter o Python instalado em seu sistema. Você pode baixar a versão mais recente do Python em https://www.python.org/downloads/.

> <b>ChromeDriver:</b> O ChromeDriver é uma ferramenta necessária para executar testes de interface do usuário com o Robot Framework. Verifique a versão do Chrome instalada em seu computador e faça o download correspondente do ChromeDriver neste link. Certifique-se de adicionar o ChromeDriver ao seu PATH.

 
> <b>requirements.txt:</b> O arquivo requirements.txt contém as dependências necessárias para a automação de testes com o Robot Framework.
> Certifique-se de ter o arquivo requirements.txt disponível e execute o seguinte comando para instalar as dependências:

```pip
pip install -r requirements.txt
```
<h1></h1>
<h2><b><a id=executando_testes_manual>Executando os Testes Manualmente<a></b></h2>
Navegue até o diretório raiz do projeto em seu terminal:

```bash
cd /caminho/para/o/projeto
```
Execute o seguinte comando para iniciar a execução dos testes:
```python
robot -L trace -d Result/ -V ./resource/python/root.py tests/   
```
> Este comando executará todos os testes localizados no diretório tests.

> Ao final da execução, você verá um resumo dos resultados dos testes, incluindo o número de casos de teste passados e falhados.

<h1></h1>

## Passo 4 (opcional): Executando testes específicos da automação
<a id=executando_testes_com_tag><a>
> Execute o seguinte comando:
```python
robot -L trace -d Result/ -V ./resource/python/root.py -i <tag do teste> tests/ 
```
> * Após executar, uma pasta "Result" será criada dentro do projeto contendo 2 arquivos .html contendo o report da execução da automação com os status dos testes.
# 4. Tags

<a id="Tags_dos_testes_automatizados"></a>

> 
> ```
> Nota:
> - Ao rodar a automação utilizando tags, será executado o(s) teste(s) em questão. 
> - Com as tags, será executado somente o(s) teste(s) em questão.
> ```
