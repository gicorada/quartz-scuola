Isolamento -> Gestito dal gestore della concorrenza

Unità di misura: TPS (transactions per second), transazioni per secondo

Gestore dei metodi di accesso gestiva i read e write -> usa gestore della concorrenza per non interferire

Il gestore della concorrenza gestisce l'ordine delle transazioni, fa eventualmente attendere la fine di un'altra transazione

## Possibili problemi nella concorrenza

### 1) Perdita di aggiornamento (lost update)   <- VA SEMPRE EVITATA
Due transazioni identiche operano su x

| T1        | T2        |                                          |
| --------- | --------- | ---------------------------------------- |
| leggo x   |           |                                          |
| x = x + 1 |           |                                          |
|           | leggo x   |                                          |
|           | x = x + 1 |                                          |
|           | scrivo x  |                                          |
|           | commit    |                                          |
| scrivo x  |           | <- Questo sovrascrive la scrittura di T2 |
| commit    |           |                                          |

### 2) Lettura sporca (dirty read)

| T1        | T2      |                                                       |
| --------- | ------- | ----------------------------------------------------- |
| leggo x   |         |                                                       |
| x = x + 1 |         |                                                       |
| scrivo x  |         |                                                       |
|           | leggo x |                                                       |
|           | commit  | <- Comunico x+1 ma nella base di dati in realtà c'è x |
| abort     |         |                                                       |

### 3) Letture inconsistenti

| T1      | T2        |                                                                           |
| ------- | --------- | ------------------------------------------------------------------------- |
| leggo x |           |                                                                           |
|         | leggo x   |                                                                           |
|         | x = x + 1 |                                                                           |
|         | scrivo x  |                                                                           |
|         | commit    |                                                                           |
| leggo x |           | <- leggo un valore diverso dal primo pur essendo nella stessa transazione |

### 4) Aggiornamento fantasma (ghost update)

Qui ho come vincolo che x + y + z deve essere 1000

| T1      | T2          |
| ------- | ----------- |
| leggo x |             |
| leggo y |             |
|         | leggo y     |
|         | y = y - 100 |
|         | leggo z     |
|         | z = z + 100 |
|         | scrivo y    |
|         | scrivo z    |
|         | commit      |
| leggo z |             |

T1 però non ha come risultato 1000, in quanto c'è un aggiornamento

### 5) Inserimento fantasma

Mentre faccio un aggregato una transazione aggiunge un record, falsando ad esempio la media (sommo cinque valori ma divido per sei)


## Come risolvo
Come risolvo questi problemi? **SCHEDULAZIONE**

Seriale se vengono eseguite l'una dopo l'altra (non darà mai problemi, non esiste concorrenza)  
Serializzabile se hanno lo stesso effetto delle seriali (concorrenza ma no anomalie)

Lo schedulatore accetta <u>solo</u> serializzabili, rifiuta quelle che non lo sono


Come faccio il controllo di concorrenza? **LOCK**  
r_lock prima della lettura (condiviso)  
w_lock prima della scrittura (esclusivo)  
unlock dopo le operazioni protette da lock

Scheduler passa al lock manager le richieste di lock che provengono dalle transazioni

Il lock garantisce solamente che le transazioni accedano in mutua esclusione

Per la concorrenza -> protocollo di locking a due fasi (2PL):
- Anticipa le richieste di lock all'inizio della transazione
- Posticipa le richieste di unlock alla fine della transazione
-> Nessun lock può essere dopo di un unlock

2PL evita: perdite di aggiornamento, lettura inconsistente, aggiornamento fantasma  
NON evita: letture sporche e inserimenti fantasma, stallo

Posso usare 2PL stretto con unlock dopo commit/abort e non prima (appesantisce), ma può provocare lo stallo


Stallo: blocco critico, deadlock  
Come evitarlo?
- Timeout: dopo tanto tempo in attesa viene eseguito abort
- Rilevo i blocchi critici (kill transazione)
- Prevenzione (è molto pesante, va calcolato grafo di Holt)

Tramite SQL posso decidere il livello di isolamento delle transazioni:
```sql
SET TRANSACTION ISOLATION LEVEL read uncommitted | read committed | repeatable read | serializable
```

Tutti i livelli garantiscono l'evitare di perdite di aggiornamento, alcuni anche di più ma diventano più pesanti