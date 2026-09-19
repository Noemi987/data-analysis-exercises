# Power BI – Olist E-commerce Analysis

## Contesto

Progetto realizzato in **Power BI** utilizzando il dataset pubblico e anonimizzato di **Olist**, piattaforma e-commerce brasiliana.

Il dataset contiene informazioni relative agli ordini effettuati tra il **2016 e il 2018**, includendo dati su ordini, clienti, prodotti, recensioni e distribuzione geografica.

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

Il report è composto da quattro sezioni:
1. **Panoramica e-commerce**
2. **Analisi geografica delle vendite**
3. **Analisi temporale**
4. **Dettaglio categoria prodotto**, accessibile tramite drill-through

Sono stati inoltre implementati filtri, navigazione e drill-through per rendere il report interattivo e facilitarne l'esplorazione.

## Strumenti utilizzati
- Power BI Desktop
- Power Query
- DAX
- Data Modeling
- Data Visualization
