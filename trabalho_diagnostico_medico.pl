% Base de conhecimento - Relacionamentos completos entre doenças e sintomass
% Valores possíveis: sim, raro, nao
:- dynamic sintomas/3.
:- dynamic feedback_diagnostico/3.
:- dynamic subconjunto/2.

sintoma(tosse).
sintoma(falta_ar).
sintoma(febre).
sintoma(congestao_nasal).
sintoma(coriza).
sintoma(espirros).
sintoma(dor_garganta).
sintoma(dor_cabeca).
sintoma(mal_estar).
sintoma(fadiga).
sintoma(chiado_peito).
sintoma(irritacao_olhos).
sintoma(perda_paladar).
sintoma(perda_olfato).
sintoma(dor_muscular).
sintoma(sibilo).

% Gripe
sintomas(gripe, tosse, sim).
sintomas(gripe, falta_ar, nao).
sintomas(gripe, febre, sim).
sintomas(gripe, congestao_nasal, raro).
sintomas(gripe, coriza, raro).
sintomas(gripe, espirros, raro).
sintomas(gripe, dor_garganta, raro).
sintomas(gripe, dor_cabeca, raro).
sintomas(gripe, mal_estar, sim).
sintomas(gripe, fadiga, nao).
sintomas(gripe, chiado_peito, raro).
sintomas(gripe, irritacao_olhos, nao).
sintomas(gripe, perda_paladar, nao).
sintomas(gripe, perda_olfato, raro).
sintomas(gripe, dor_muscular, nao).
sintomas(gripe, sibilo, raro).

% Resfriado
sintomas(resfriado, tosse, sim).
sintomas(resfriado, falta_ar, nao).
sintomas(resfriado, febre, raro).
sintomas(resfriado, congestao_nasal, sim).
sintomas(resfriado, coriza, sim).
sintomas(resfriado, espirros, sim).
sintomas(resfriado, dor_garganta, sim).
sintomas(resfriado, dor_cabeca, raro).
sintomas(resfriado, mal_estar, raro).
sintomas(resfriado, fadiga, raro).
sintomas(resfriado, chiado_peito, raro).
sintomas(resfriado, irritacao_olhos, nao).
sintomas(resfriado, perda_paladar, nao).
sintomas(resfriado, perda_olfato, raro).
sintomas(resfriado, dor_muscular, nao).
sintomas(resfriado, sibilo, raro).

% COVID-19
sintomas(covid19, tosse, sim).
sintomas(covid19, falta_ar, sim).
sintomas(covid19, febre, sim).
sintomas(covid19, congestao_nasal, raro).
sintomas(covid19, coriza, raro).
sintomas(covid19, espirros, raro).
sintomas(covid19, dor_garganta, raro).
sintomas(covid19, dor_cabeca, raro).
sintomas(covid19, mal_estar, sim).
sintomas(covid19, fadiga, sim).
sintomas(covid19, chiado_peito, raro).
sintomas(covid19, irritacao_olhos, raro).
sintomas(covid19, perda_paladar, sim).
sintomas(covid19, perda_olfato, sim).
sintomas(covid19, dor_muscular, raro).
sintomas(covid19, sibilo, raro).

% Influenza
sintomas(influenza, tosse, sim).
sintomas(influenza, falta_ar, raro).
sintomas(influenza, febre, sim).
sintomas(influenza, congestao_nasal, raro).
sintomas(influenza, coriza, raro).
sintomas(influenza, espirros, raro).
sintomas(influenza, dor_garganta, raro).
sintomas(influenza, dor_cabeca, raro).
sintomas(influenza, mal_estar, raro).
sintomas(influenza, fadiga, raro).
sintomas(influenza, chiado_peito, nao).
sintomas(influenza, irritacao_olhos, nao).
sintomas(influenza, perda_paladar, raro).
sintomas(influenza, perda_olfato, raro).
sintomas(influenza, dor_muscular, raro).
sintomas(influenza, sibilo, raro).

% Asma
sintomas(asma, tosse, sim).
sintomas(asma, falta_ar, sim).
sintomas(asma, febre, nao).
sintomas(asma, congestao_nasal, raro).
sintomas(asma, coriza, raro).
sintomas(asma, espirros, raro).
sintomas(asma, dor_garganta, nao).
sintomas(asma, dor_cabeca, raro).
sintomas(asma, mal_estar, nao).
sintomas(asma, fadiga, raro).
sintomas(asma, chiado_peito, sim).
sintomas(asma, irritacao_olhos, raro).
sintomas(asma, perda_paladar, raro).
sintomas(asma, perda_olfato, raro).
sintomas(asma, dor_muscular, raro).
sintomas(asma, sibilo, sim).

% Rinite
sintomas(rinite, tosse, sim).
sintomas(rinite, falta_ar, raro).
sintomas(rinite, febre, nao).
sintomas(rinite, congestao_nasal, sim).
sintomas(rinite, coriza, sim).
sintomas(rinite, espirros, raro).
sintomas(rinite, dor_garganta, nao).
sintomas(rinite, dor_cabeca, raro).
sintomas(rinite, mal_estar, nao).
sintomas(rinite, fadiga, raro).
sintomas(rinite, chiado_peito, raro).
sintomas(rinite, irritacao_olhos, raro).
sintomas(rinite, perda_paladar, nao).
sintomas(rinite, perda_olfato, raro).
sintomas(rinite, dor_muscular, nao).
sintomas(rinite, sibilo, raro).

% Tuberculose
sintomas(tuberculose, tosse, sim).
sintomas(tuberculose, falta_ar, sim).
sintomas(tuberculose, febre, nao).
sintomas(tuberculose, congestao_nasal, raro).
sintomas(tuberculose, coriza, raro).
sintomas(tuberculose, espirros, raro).
sintomas(tuberculose, dor_garganta, nao).
sintomas(tuberculose, dor_cabeca, raro).
sintomas(tuberculose, mal_estar, nao).
sintomas(tuberculose, fadiga, nao).
sintomas(tuberculose, chiado_peito, nao).
sintomas(tuberculose, irritacao_olhos, raro).
sintomas(tuberculose, perda_paladar, nao).
sintomas(tuberculose, perda_olfato, raro).
sintomas(tuberculose, dor_muscular, nao).
sintomas(tuberculose, sibilo, raro).

% Pneumonia
sintomas(pneumonia, tosse, sim).
sintomas(pneumonia, falta_ar, sim).
sintomas(pneumonia, febre, sim).
sintomas(pneumonia, congestao_nasal, raro).
sintomas(pneumonia, coriza, raro).
sintomas(pneumonia, espirros, raro).
sintomas(pneumonia, dor_garganta, raro).
sintomas(pneumonia, dor_cabeca, sim).
sintomas(pneumonia, mal_estar, sim).
sintomas(pneumonia, fadiga, sim).
sintomas(pneumonia, chiado_peito, raro).
sintomas(pneumonia, irritacao_olhos, nao).
sintomas(pneumonia, perda_paladar, nao).
sintomas(pneumonia, perda_olfato, raro).
sintomas(pneumonia, dor_muscular, nao).
sintomas(pneumonia, sibilo, raro).

% Outras Doenças Respiratórias
sintomas(outras_respiratorias, tosse, sim).
sintomas(outras_respiratorias, falta_ar, sim).
sintomas(outras_respiratorias, febre, raro).
sintomas(outras_respiratorias, congestao_nasal, sim).
sintomas(outras_respiratorias, coriza, raro).
sintomas(outras_respiratorias, espirros, raro).
sintomas(outras_respiratorias, dor_garganta, raro).
sintomas(outras_respiratorias, dor_cabeca, raro).
sintomas(outras_respiratorias, mal_estar, raro).
sintomas(outras_respiratorias, fadiga, raro).
sintomas(outras_respiratorias, chiado_peito, sim).
sintomas(outras_respiratorias, irritacao_olhos, raro).
sintomas(outras_respiratorias, perda_paladar, raro).
sintomas(outras_respiratorias, perda_olfato, raro).
sintomas(outras_respiratorias, dor_muscular, nao).
sintomas(outras_respiratorias, sibilo, raro).

% Lista atualizada de todas as doenças
doenca(gripe).
doenca(resfriado).
doenca(covid19).
doenca(influenza).
doenca(asma).
doenca(rinite).
doenca(tuberculose).
doenca(pneumonia).
doenca(outras_respiratorias).

% Definição de subconjuntos de sintomass
subconjunto(congestao_nasal, dificuldade_respirar).
subconjunto(chiado_peito, dificuldade_respirar).
subconjunto(sibilo, dificuldade_respirar).

% Peso dos sintomass
peso_evidencia(sim, 3).
peso_evidencia(raro, 1).
peso_evidencia(nao, 0).

% 1 - sistema de diagnostico []
diagnosticar(Sintomas) :-
    findall(Doenca-Score, (
        doenca(Doenca),
        calcular_score_doenca(Doenca, Sintomas, Score),
        Score > 0
    ), Scores),
    sort(2, @>=, Scores, DoencasOrdenadas), 
    apresentar_diagnostico(DoencasOrdenadas). 

diagnosticar_not_show(Sintomas, DoencasOrdenadas) :-
    findall(Doenca-Score, (
        doenca(Doenca),
        calcular_score_doenca(Doenca, Sintomas, Score),
        Score > 0
    ), Scores),
    sort(2, @>=, Scores, DoencasOrdenadas), 
    apresentar_diagnosticos(DoencasOrdenadas). 

% 2 - Cálculo de score considerando feedback histórico []
calcular_score_doenca(Doenca, Sintomas, ScoreFinal) :-
    findall(Peso, (
        member(Sintoma, Sintomas),
        (sintomas(Doenca, Sintoma, Valor) ; 
         (subconjunto(Sintoma, SuperSintoma), 
          sintomas(Doenca, SuperSintoma, Valor))),
        peso_evidencia(Valor, Peso)
    ), Pesos),
    sum_list(Pesos, ScoreBase),
    ajustar_score_com_feedback(Doenca, ScoreBase, ScoreFinal).

% 3 - Sistema de consulta interativa []
consulta_interativa :-
    writeln('Por favor, liste seus sintomas iniciais (separados por vírgula):'),
    ler_sintomas(SintomasIniciais),
    diagnosticar(SintomasIniciais),
    perguntar_continuar(SintomasIniciais).

ler_sintomas(Sintomas) :-
    read_line_to_string(user_input, Input),
    atomic_list_concat(SintomasStr, ',', Input),
    maplist(atom_string, Sintomas, SintomasStr).

% Novo predicado para gerenciar a continuação do questionário
perguntar_continuar(SintomasAtuais) :-
    writeln('\nDeseja responder mais perguntas sobre outros sintomas? (sim/nao):'),
    read_line_to_string(user_input, Resposta),
    (Resposta = 'sim' ->
        perguntar_proximo_sintoma(SintomasAtuais, [])
    ;   
        writeln('\nDiagnóstico final baseado nos sintomas informados:'),
        diagnosticar_not_show(SintomasAtuais, Diagnosticos),
        apresentar_diagnosticos(Diagnosticos),
        solicitar_feedback(Diagnosticos)
    ).

% Predicado recursivo para perguntar sobre sintomas adicionais
perguntar_proximo_sintoma(SintomasAtuais, SintomasAdicionais) :-
    findall(Sintoma, (
        sintoma(Sintoma),
        \+ member(Sintoma, SintomasAtuais),
        \+ member(Sintoma, SintomasAdicionais)
    ), SintomasRestantes),
    (SintomasRestantes = [] ->
        append(SintomasAtuais, SintomasAdicionais, SintomasFinais),
        writeln('\nDiagnóstico final baseado em todos os sintomas:'),
        diagnosticar_not_show(SintomasFinais, Diagnosticos),
        apresentar_diagnosticos(Diagnosticos),
        solicitar_feedback(Diagnosticos)
    ;   
        select_random_sintoma(SintomasRestantes, Sintoma),
        format('\nVocê está sentindo ~w? (sim/nao): ', [Sintoma]),
        read_line_to_string(user_input, RespostaSintoma),
        (RespostaSintoma = "sim" ->
            append(SintomasAdicionais, [Sintoma], NovosSintomasAdicionais)
        ;   
            NovosSintomasAdicionais = SintomasAdicionais
        ),
        writeln('\nDiagnóstico parcial atual:'),
        append(SintomasAtuais, NovosSintomasAdicionais, SintomasAtualizados),
        diagnosticar(SintomasAtualizados),
        writeln('\nDeseja continuar respondendo sobre outros sintomas? (sim/nao):'),
        read_line_to_string(user_input, RespostaContinuar),
        (RespostaContinuar = "sim" ->
            perguntar_proximo_sintoma(SintomasAtuais, NovosSintomasAdicionais)
        ;   
            append(SintomasAtuais, NovosSintomasAdicionais, SintomasFinais),
            writeln('\nDiagnóstico final baseado em todos os sintomas:'),
            diagnosticar_not_show(SintomasFinais, Diagnosticos),
            apresentar_diagnosticos(Diagnosticos),
            solicitar_feedback(Diagnosticos)
        )
    ).

% Predicado auxiliar para selecionar um sintoma aleatório
select_random_sintoma(Sintomas, Sintoma) :-
    length(Sintomas, Len),
    random(0, Len, Index),
    nth0(Index, Sintomas, Sintoma).


solicitar_feedback(Diagnosticos) :-
    writeln('O diagnóstico foi útil? Qual doença foi confirmada? (digite o nome ou "nenhuma"):'),
    read_line_to_string(user_input, DoencaConfirmada),
    (DoencaConfirmada \= "nenhuma" ->
        atualizar_feedback(DoencaConfirmada, Diagnosticos)
    ;   true).

atualizar_feedback(DoencaConfirmada, Diagnosticos) :-
    member(DoencaConfirmada-_, Diagnosticos),
    get_time(Timestamp),
    assertz(feedback_diagnostico(DoencaConfirmada, positivo, Timestamp)).

% 4 - Sistema de aprendizado com feedback []
ajustar_score_com_feedback(Doenca, ScoreBase, ScoreAjustado) :-
    findall(1, feedback_diagnostico(Doenca, positivo, _), FeedbackPositivo),
    length(FeedbackPositivo, NumPositivo),
    ScoreAjustado is ScoreBase * (1 + (NumPositivo * 0.1)).

% 5 - Gerenciamento de sintomass []
adicionar_sintomas(Doenca, Sintoma, Valor) :-
    member(Valor, [sim, raro, nao]),
    (doenca(Doenca) -> 
        true 
    ;   assertz(doenca(Doenca))),
    assertz(sintomas(Doenca, Sintoma, Valor)).


% 6 - remoção do sintomas []
remover_sintomas(Doenca, Sintoma) :-
    retract(sintomas(Doenca, Sintoma, _)).

% Utilitários
ler_sintomass(Sintomas) :-
    read_line_to_string(user_input, Input),
    atomic_list_concat(SintomasStr, ',', Input),
    maplist(atom_string, Sintomas, SintomasStr).

apresentar_diagnosticos([]).
apresentar_diagnosticos([Doenca-Score|Resto]) :-
    format('~w (Score: ~2f)~n', [Doenca, Score]),
    apresentar_diagnosticos(Resto).

apresentar_diagnostico([]).
apresentar_diagnostico([Doenca-_|_]) :-
    write('Se diagnostico levar a crer que possui '),
    format('[~w] ~n', [Doenca]).
