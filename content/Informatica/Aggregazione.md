## Operatori
- `COUNT`:
```SQL
SELECT COUNT(*|[DISTINCT|ALL] Attributi)
```
Conta le righe restituite dalla query

- `SUM(Attributi)`: somma i valori
- `MIN(Attributi)`: trova il minimo
- `MAX(Attributi)`: trova il massimo
- `AVG(Attributi)`: calcola la media
## Raggruppamento
Per raggruppare le righe si usa GROUP BY

```SQL
SELECT  Dipartimento, AVG(Stipendio) AS StipendioMedio
FROM IMPIEGATO
GROUP BY Dipartimento
```

Per ogni dipartimento ho la media degli stipendi
Il group by va fatto per tutti gli attributi non aggregati