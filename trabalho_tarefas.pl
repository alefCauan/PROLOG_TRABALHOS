:- dynamic tarefa/3.
:- dynamic dependencia/2.

% tarefas iniciais
tarefa('fazer_lista_compras', alta, pendente).
tarefa('comprar_leite', media, pendente).
tarefa('pagar_conta_luz', alta, em_progresso).
tarefa('lavar_roupa', baixa, concluida).
tarefa('estudar_prova', alta, pendente).

%---------------------------------------
% (a) Operações básicas CRUD
%---------------------------------------
% Inserir tarefa (x)
inserir_tarefa(Descricao, Prioridade, Status) :-
    assertz(tarefa(Descricao, Prioridade, Status)).

% Buscar tarefa, 3 tipos de busca porque nao foi especificado como deveria ser

% Buscar por descrição (x)
buscar_por_descricao(Descricao) :-
    write('=== Tarefas encontradas ==='), nl,
    write('Descrição | Prioridade | Status'), nl,
    write('--------------------------------'), nl,
    (tarefa(Descricao, Prioridade, Status),
    format('~w | ~w | ~w~n', [Descricao, Prioridade, Status])).
buscar_por_descricao(_).

% Buscar por prioridade (x)
buscar_por_prioridade(Prioridade) :-
    write('=== Tarefas encontradas ==='), nl,
    write('Descrição | Prioridade | Status'), nl,
    write('--------------------------------'), nl,
    (tarefa(Descricao, Prioridade, Status),
    format('~w | ~w | ~w~n', [Descricao, Prioridade, Status])),
    fail.
buscar_por_prioridade(_).

% Buscar por status (x)
buscar_por_status(Status) :-
    write('=== Tarefas encontradas ==='), nl,
    write('Descrição | Prioridade | Status'), nl,
    write('--------------------------------'), nl,
    (tarefa(Descricao, Prioridade, Status),
    format('~w | ~w | ~w~n', [Descricao, Prioridade, Status])),
    fail.
buscar_por_status(_).

% Excluir tarefa (x)
excluir_tarefa(Descricao) :-
    retract(tarefa(Descricao, _, _)).

%---------------------------------------
% (b) Modificar status da tarefa (x)
%---------------------------------------
modificar_status(Descricao, NovoStatus) :-
    (
        tarefa(Descricao, Prioridade, _) ->
        (
            retract(tarefa(Descricao, Prioridade, _)),
            assertz(tarefa(Descricao, Prioridade, NovoStatus)),
            format('Status da tarefa ~w atualizado para ~w~n', [Descricao, NovoStatus])
        )
        ;
        format('Tarefa ~w não existe~n', [Descricao])
    ).

%---------------------------------------
% (c) Agrupar tarefas por status (x)
%---------------------------------------
tarefas_por_status(Resultado) :-
    findall(T, tarefa(T, _, pendente), Pendentes),
    findall(T, tarefa(T, _, em_progresso), EmProgresso),
    findall(T, tarefa(T, _, concluida), Concluidas),
    Resultado = tarefas([pendentes(Pendentes), 
                        em_progresso(EmProgresso), 
                        concluidas(Concluidas)]).

%---------------------------------------
% (d) Ordenar tarefas por prioridade (x)
%---------------------------------------
ordenar_por_prioridade(ListaOrdenada) :-
    findall(T-P, tarefa(T, alta, _), Altas),
    findall(T-P, tarefa(T, media, _), Medias),
    findall(T-P, tarefa(T, baixa, _), Baixas),
    append(Altas, Medias, Temp),
    append(Temp, Baixas, TodosOrdenados),
    extrair_tarefas(TodosOrdenados, ListaOrdenada).

% Auxiliar para extrair apenas as descrições das tarefas
extrair_tarefas([], []).
extrair_tarefas([T-_|Resto], [T|ListaFinal]) :-
    extrair_tarefas(Resto, ListaFinal).

%---------------------------------------
% (e) Gerenciar dependências entre tarefas (x)
%---------------------------------------
adicionar_dependencia(Tarefa, Dependencia) :-
    tarefa(Tarefa, _, _),
    tarefa(Dependencia, _, _),
    assertz(dependencia(Tarefa, [Dependencia])).

%---------------------------------------
% Consultar dependências (x)
%---------------------------------------
consultar_dependencia(Tarefa, Dependencias) :-
    dependencia(Tarefa, Dependencias).

%---------------------------------------
% Mostrar todas as tarefas (x)
%---------------------------------------
mostrar_tarefas :-
    write('-------- Lista de Tarefas --------'), nl,
    write('Descrição | Prioridade | Status'), nl,
    write('--------------------------------'), nl,
    mostrar_tarefas_por_prioridade(alta),
    mostrar_tarefas_por_prioridade(media),
    mostrar_tarefas_por_prioridade(baixa).

% Auxiliar para mostrar tarefas por prioridade
mostrar_tarefas_por_prioridade(Prioridade) :-
    tarefa(Descricao, Prioridade, Status),
    format('~w | ~w | ~w~n', [Descricao, Prioridade, Status]),
    fail.
mostrar_tarefas_por_prioridade(_).
