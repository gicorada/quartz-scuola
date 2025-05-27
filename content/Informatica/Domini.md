## Caratteri
```SQL
CHARACTER [VARYING](lunghezza)[character set NFamiglia]
```
Solitamente sintetizziamo in `CHAR` e `VARCHAR`, e non utilizziamo `character set NFamiglia`
## Numeri
`NUMERIC` specifica le cifre che devono essere mostrate
`DECIMAL` specifica le cifre dopo la virgola
`FLOAT`, `DOUBLE` ecc rappresentano un numero approssimato con virgola

## Tempo
`DATE` solo data
`TIME` solo ora
`TIMESTAMP` data e ora
`TIME` e `TIMESTAMP` possono avere una timezone

## Altri
`BOOLEAN` true/false
`BIGINT` numero enormemente grandi, poco usato
`BLOB` e `CLOB` binary/character large object spesso utilizzato per file come documenti, immagini, video ecc 
