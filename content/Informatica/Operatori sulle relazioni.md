$A \cup B$ Unione `UNION`
$A \cap B$ Intersezione `INTERSECT/INNER JOIN`
$A \setminus B$ `EXCEPT` (Query annidata)

## Ridenominazione
In algebra relazionale: $\rho$ (Rho)
In SQL: `AS`
$\rho_{Genitore \leftarrow Padre} (PATERNITA)$
$\rho_{Genitore \leftarrow Madre} (MATERNITA)$

## Selezione
In algebra relazionale: $\sigma$ (Sigma)
In SQL: `SELECT`
$\sigma_{Eta>30 \wedge Stipendio > 4000}(IMPIEGATI)$
In sql la selezione precedente viene fatta tramite le seguenti istruzioni:
```sql
SELECT *
FROM IMPIEGATI
WHERE Eta>30 AND Stipendio>4000
```
$A\;relazione \rightarrow Grado(\sigma(A)) = Grado(A), Cardinalita(\sigma(A)) \leq Cardinalita(A)$

## Join
In algebra relazionale: $\bowtie$
In SQL: `JOIN`
$R_1 \bowtie R_2$
$$

R_1, R_2\;relazioni \rightarrow Grado(R_1 \bowtie R_2) \leq \\
\leq Grado(R_1) + Grado(R_2), Cardinalita(R_1 \bowtie R_2) \leq \\
\leq Cardinalita(R_1) \cdot Cardinalita(R_2)

$$
Theta-join:
Algebra: $Impiegati \underset{Progetto=Codice}{\bowtie} Progetti$
SQL: `FROM IMPIEGATI [INNER] JOIN PROGETTI ON Progetto=Codice`