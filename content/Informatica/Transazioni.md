
Transazione TR1

UPDATE T_A ok  
UPDATE T_B ko

Gestore transazioni scrive nel buffer (memoria temporanea e veloce), che poi inserirà i dati nella memoria secondaria

Il buffer può gestire in due modi i dati:
- Scrittura immediata
	- Commit: ok
	- Abort/rollback: ko -> UNDO
- Scrittura differita
	- Abort/rollback: ok
	- Commit -> guasto prima che il buffer sia riversato nella memoria secondaria -> REDO

Argomenti collegati: [[Isolamento e concorrenza]]