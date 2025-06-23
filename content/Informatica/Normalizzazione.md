## Dettagli generali
Forma normale: proprietà che certifica la qualità di uno schema

Prima forma normale è data per scontata, una relazione ha chiave primaria e attributi sono atomici

Impiegato -> Stipendio  
Progetto -> Bilancio  
Freccia "->" significa "determina"

(A<sub>1</sub>, A<sub>2</sub>, A<sub>3</sub>, ..., A<sub>i</sub> -> A<sub>k</sub>) Dipendenza funzionale

Dipendenza Funzionale è chiamata "banale" se attributo presente sia a destra che a sinistra (A, B -> C, A)

Esempio: Impiegato, Progetto -> Funzione

## Boyce-Codd
Una relazione R è in forma normale di Boyce-Codd se $\forall$ D.F. non banale x->y, x è superchiave di R

Come faccio ad avere una relazione in forma di BC? Decompongo le tabelle

R si decompone senza perdita su due relazioni se l'insieme degli attributi comuni alle due relazioni è chiave per almeno una delle due relazioni

R(x) si decompone senza perdita in R<sub>1</sub>(x) e R<sub>2</sub>(x) se $\forall$ istanza legale (=valida) su R
$$
\pi_{x_{1}}(r) \bowtie \pi_{x_{2}}(r) = r \iff x_{1} \cap x_{2} \to x_{1} \lor x_{1} \cap x_{2} \to x_{2}
$$


Ciascuna delle D.F. dello scherma originario dovrebbe coinvolgere attributi che compaiono tutti insieme in uno degli schemi decomposti

## Terza forma normale
Una relazione r è in terza forma normale se $\forall$  D.F. non banale x -> A
- x è superchiave
- A è primo (ovvero $\in$ C.C.)

Accetta qualche ridondanza e anomalia, ma solo quelle che non si possono risolvere con boyce-codd:

BCFN Non ammette ridondanze -> NON sempre raggiungibile  
3FN ammette piccole ridondanze -> SEMPRE raggiungibile

Procedimento di normalizzazione in 3FN:

input r
1) Trovare le chiavi candidate
2) Trovare le dipendenze funzionali
3) Verificare se in 3FN tramite la definizione
	1) Se sì, FINE
	2) Se no, continua
4) Normalizzazione
	1) Creare una nuova relazione $\forall$ D.F. iniziale
	2) Avendo l'accortezza di verificare che una delle relazioni decomposte contenga una delle C.C. iniziali
		1) Se sì, FINE
		2) Se no, continua
	3) Creo una relazione contenente solo gli attributi di una C.C.
5) Verificare che lo schema decomposto conservi le D.F. senza perdita di informazioni -> Non dobbiamo farlo, ne siamo già sicuri
6) Verificare che lo schema decomposto sia anche in BCFN
	1) La C.C. è unica nella relazione di partenza?
		1) Se sì, 3FN -> BCFN
		2) Se no, applico la definizione di BCFN


## 2FN
| Impiegato | Categoria | Stipendio |

I -> C  
C -> S     <- D.F. Transitiva, attr. di sx sono attr. di destra di altra D.F.

C.C. { I }

È in 2FN (non ci sono D.F. parziali)  
Non è in 3FN (ci sono D.F. transitive)

## 1FN
| Impiegato | Progetto | Stipendio |

C.C. { I, P }

I -> S      <- D.F. parziale

Non è in 2FN

Una relazione è in 2FN se non ha D.F. parziali


## Riassunto
R è in 1FN: definita C.C., attributi atomici  
R è in 2FN: no D.F. parziali  
R è in 3FN: no D.F. transitive (x->y, y->z) <==> $\forall$ D.F. x->A, x è superchiave $\lor$ A è primo


