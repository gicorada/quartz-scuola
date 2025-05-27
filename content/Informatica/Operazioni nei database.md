## Creazione di schema
```SQL
CREATE SCHEMA Nome
```

## Creazione di Tabelle
```SQL
CREATE TABLE Nome (
    Nomecampo Tipocampo Vincoli
)
```

## Primary Key 
```SQL
PRIMARY KEY (Campi)
```

## Foreign Key
```SQL
FOREIGN KEY (Campi) REFERENCES TABELLA(Campi)
```
## Vincoli
- Non null: `NOT NULL`
- Default: `DEFAULT valore`
- Unico: `UNIQUE (Campi)` (questo va in fondo e non sul campo)

## Modifica degli schemi
- Altera: `ALTER TABLE` ecc...
- Cancella: `DROP TABLE tabella`

## Ordinamento
```SQL
ORDER BY Campo
```
Deve essere l'ultima clausola della query

Posso fare la differenza tra insiemi con LEFT JOIN, query nidificate oppure EXCEPT