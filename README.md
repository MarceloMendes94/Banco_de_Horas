# Banco de horas. 

## Objetivo
Construir uma ferramenta de gestão de projeto de iniciação científica do polo de inovação, contabilizando horas de ativdades e automação de criação de documentos.  

## Equipe
Marcelo Passamai Mendes

## Diário de Bordo
[Diário de bordo](DIARIO.md)

## Descrição  
O sistema do banco de horas deve ser utilizado por bolsistas e coordenadores em projetos de iniciação científica do Polo de Inovação, cada projeto deve ter um coordenador responsável, sendo que cada coordenador pode ter projetos até completar o total de horas disponivels por semestre.  
Cada Usuário pode autenticar-se no sistema, seja por email e uma senha escolhida pelo próprio usuário, além disso o sistema deve conter: nome, telefone e campus.  
Os bolsistas podem: logar-se, inserir atividades, atualizar atividades e verificar avaliação do coordenador.  
<br>
Uma atividade precisa ter um tempo de duração ou seja (inicio e fim), sendo que o sistema deve impedir o bolsista lançar atividades em datas futuras. As atividades devem conter uma descrição textual inseirdas pelo bolsista com o que foi feito.  
As atividades vão aparecer agrupadas em até 5 em 5 de cada bolsista para o coordenador avaliar,o coordenador deve ver as atividades dos bolsistas e avaliar como POSITIVO ou NEGATIVO.  
Em cado de negativo o coordenador deve inserir um comentário para o bolsista alterar suas atividades.
<br>  
Os projetos são compostos por: 1 coordenador, 2 ou mais bolsistas. Um projeto deve ser cadastrado com título do projeto de pesquisa, título do plano de trabalho e texto contendo a de área do conhecimento e além disso,  de conter informações 
sobre a referência  da chamada, que pode ser: PIBIC, PIVIC, PIBITI, PROGRUPOS,PIBIC - EM e Jovens talentos para a Ciência.
Junto, deve conter o edital formado por ano/semestre, e agência financiadora: CNPq,Fapes,Facitec, Ifes ou Voluntaraido: sem financiamento.
<br>
O sistema deve gerar um relatório conforme o PDF. 
[Modelo de Relatório final](Modelo_relatorio_final.pdf)

Faz-se necessário um controle de projetos e usuários pelo Polo de inovação, O sistema deve ter um módulo de acesso para cadastro de usuários: bolsistas e coordenadores, podendo gerir projetos com as devidas alocações. 

## Modelagem

### 2.1 Modelo UML  


### 2.2 Modelo lógico do banco de dados  


### 2.3 Modelo Físico   



### 2.3 Diagrama de casos de uso  

## Requisistos
O desenvolvimento será guiado por história de usuário para medida de progresso.
### Funcionais
|indice|Descição|
|-|-|
|001|Usuários: Bolsistas, Coordenadores e Administradores, para acessar o sistema devem se autenticar.|
|002|Projetos devem ser cadastrados apenas por usuários Administrador, um projeto deve conter: Título, Coordenador e no mínimo 2 Bolsistas podendo ter mais.|
|003|Administradores podem cadastrar usuários na plataforma: Bolsistas, Coordenadores e administradores|
|004|Bolsistas, podem cadastrar atividades na plataforma, as atividades devem conter Título, Descrição, Início e Fim|
|005|Coordenadores devem ser capazes de avaliar as atividades realizadas por seus bolsistas como positivo negativo|
 

## Não funcionais
|Indice|Descrição|
|-|-|
|000||
|000||


<hr>
