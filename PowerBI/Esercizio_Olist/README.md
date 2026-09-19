# Power BI – Olist E-commerce Analysis

## Contesto

Progetto realizzato in **Power BI** utilizzando il dataset pubblico e anonimizzato di **Olist**, piattaforma e-commerce brasiliana.

Il dataset contiene informazioni relative agli ordini effettuati tra il **2016 e il 2018** includendo dati su ordini, clienti, prodotti, recensioni e distribuzione geografica.

Tabelle utilizzate:
- `olist_orders_dataset`
- `olist_order_items_dataset`
- `olist_products_dataset`
- `olist_order_reviews_dataset`
- `olist_customers_dataset`

I file sorgente non sono inclusi nel repository.


## Obiettivi

Il report è stato sviluppato per analizzare:

- andamento degli ordini e del fatturato nel tempo;
- confronto con l'anno precedente e variazioni YoY;
- distribuzione geografica delle vendite;
- performance delle categorie di prodotto;
- distribuzione delle valutazioni dei clienti.

## Sviluppo

I dati sono stati trasformati con **Power Query** e organizzati secondo uno **Star Schema** utilizzando una dimensione calendario dedicata.

Sono state create misure **DAX** per il calcolo dei principali KPI.

Il report è articolato in quattro sezioni:

- **Panoramica e-commerce**: KPI principali, andamento temporale, categorie prodotto e distribuzione delle valutazioni.
- **Analisi geografica delle vendite**: distribuzione del fatturato sul territorio e confronto tra stati.
- **Analisi temporale**: confronto tra anno corrente e precedente e variazioni YoY di ordini e fatturato.
- **Dettaglio categoria prodotto**: pagina di drill-through dedicata all'analisi della categoria selezionata.

Sono stati inoltre implementati filtri, navigazione e drill-through per rendere il report interattivo e facilitarne l'esplorazione.



## Modello dati

Il modello dati è stato strutturato secondo uno Star Schema, separando tabelle dei fatti e dimensioni.

Il modello comprende:

- **FactOrderItems**: dati relativi agli articoli ordinati, prezzi e costi di spedizione.
- **FactReviews**: recensioni e valutazioni degli ordini.
- **DimCustomer**: informazioni geografiche dei clienti.
- **DimProduct**: informazioni sulle categorie di prodotto.
- **DimDate**: calendario utilizzato per le analisi temporali e i confronti con l'anno precedente.

Le relazioni tra tabelle dimensionali e fact table sono state impostate con cardinalità **uno-a-molti**. 

## Principali misure DAX

Tra le principali misure utilizzate nel report:

- **Total Revenue**: fatturato calcolato come somma di prezzo del prodotto e costo di spedizione.
- **Order Items**: conteggio degli articoli presenti negli ordini.
- **Average Rating**: valutazione media delle recensioni.
- **Order Items PY**: articoli ordinati nello stesso periodo dell'anno precedente.
- **Order Items YoY %**: variazione percentuale degli articoli ordinati rispetto all'anno precedente.
- **Total Revenue PY**: fatturato dello stesso periodo dell'anno precedente.
- **Total Revenue YoY %**: variazione percentuale del fatturato rispetto all'anno precedente.

## Strumenti utilizzati
- Power BI Desktop
- Power Query
- DAX
- Data Modeling
- Data Visualization
