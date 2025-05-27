$D_1, D_2 \rightarrow D_1 \times D_2 \{(v_1, v_2)| v_1 \in D_1 \wedge v_2 \in D_2\}$

Se $D_1=\{1, 2, 4\}$ e $D_2=\{a, b\}$:
$D_1 \times D_2 = \{(1,a), (1,b), (2,a), (2,b), (4,a), (4,b)\}$
Relazione $R_n \subseteq D_1 \times D_2$
Può $R$ essere:
$R_1=\{(2,a), (2,b), (4,a)\}$? Sì
$R_2=\{(a,2), (2,b), (4,a)\}$? NO (Non posso invertire in questo modo)
$R_3=\{(2,b), (2,a), (4,a)\}$? Sì

Provo a rappresentare le relazioni nel piano cartesiano. è comodo? NO
Provo a rappresentare le relazioni tramite diagrammi. è comodo? NO
Provo a rappresentare le relazioni in tabella. è comodo? Sì

$D_1 \times D_2 \times \dotso \times \ D_n = \{(v_1, v_2, \dotso, v_n \;|\; v_i \in D_i \; \forall \; 1 \leq i \leq n\}$

Non posso cambiare la posizione dei dati in una riga, ma posso cambiare la posizione della colonna per tutte le righe della tabella (tuple)

Da teoria a pratica:
- Relazioni -> Tabelle
- Attributi -> Campi
- Tuple -> Record

Lo schema della tabella viene indicato come `STUDENTI(Matricola, Cognome, Nome, DataNascita`

La tabella di congiunzione è formata almeno dalle chiavi primarie delle tabelle che unisce