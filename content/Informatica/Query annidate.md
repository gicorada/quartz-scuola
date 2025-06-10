## Indipendenti
```sql
SELECT Nome
FROM IMPIEGATO
WHERE Nome <> ALL (SELECT Cognome FROM IMPIEGATO)
```
`ALL` -> deve essere diverso da TUTTI  
`ANY` -> deve essere diverso da almeno uno, qualsiasi  
La query tra parentesi mi da una tabella di valori

Sul `WHERE`, se ho un attributo, devo averne uno anche nella query annidata come risultato, se ne ho due devo restituirne due ecc...

Quella dell'esempio è una query annidata indipendente (=non correlata alla query esterna)

Posso annidare nel where (di solito), nel from (un po' complicato) e nel select (quasi mai)

Invece di `<>ALL` posso usare anche `NOT IN`

## Correlate

```sql
SELECT CF
FROM PERSONA P1
WHERE CF <> ALL (SELECT P2.CF FROM PERSONA P2
					WHERE P1.Nome = P2.Nome AND P1.Cognome = P2.Cognome)
```

Per ogni record nelle indipendenti viene eseguita la subquery una volta, mentre in queste viene rieseguita ogni volta perché dipende dalla query esterna

Le query annidate correlate aggiungono potere espressivo al linguaggio (ad esempio massimi e minimi relativi possono essere fatti solo con queste query)

```sql
SELECT CF
FROM PERSONA P1
WHERE NOT EXISTS (SELECT * FROM PERSONA P2
					WHERE P1.Nome = P2.Nome AND P1.Cognome = P2.Cognome
					AND P1.CF = P2.CF)
```

`NOT EXISTS` ed `EXISTS`  sono molto più leggeri di `<>ALL`, confrontano numero di record e non contenuto dei record