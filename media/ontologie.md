# Toepassingsprofiel
![](profiel.svg "profiel")


## Klassen

### Bepaling

|URI|http://bp4mc2.org/regelvorming#Bepaling|
|-|-|
|Definitie|Een bepaling is een duiding van de regel die met een tekstfragment wordt gegeven|

|Eigenschap|Kardinaliteit|Datatype/klasse|
|----------|-------------|---------------|
|op grond van|1..1|Fragment|
|normeert|0..1|Handeling|
|soort|1..1|Bepalingsoorten|

### Bron

|URI|http://data.europa.eu/eli/ontology#LegalResource|
|-|-|
|Definitie|Een bron is een duurzaam toegankelijk document dat dient als grondslag of interpretatie van het gegeven recht|

|Eigenschap|Kardinaliteit|Datatype/klasse|
|----------|-------------|---------------|
|titel|1..1|[string](http://www.w3.org/2001/XMLSchema#string)|

### Fragment

|URI|http://data.europa.eu/eli/ontology#LegalResourceSubdivision|
|-|-|
|Definitie|Een fragment is een onderscheidbaar onderdeel in een bron|

|Eigenschap|Kardinaliteit|Datatype/klasse|
|----------|-------------|---------------|
|titel|1..1|[string](http://www.w3.org/2001/XMLSchema#string)|
|verwijst naar|0..n|Fragment|
|onderdeel van|1..1||

### Handeling

|URI|http://bp4mc2.org/regelvorming#Handeling|
|-|-|
|Definitie|Een handeling is een gebeurtenis zoals die plaatsvindt in de werkelijkheid door toedoen van een actor|

|Eigenschap|Kardinaliteit|Datatype/klasse|
|----------|-------------|---------------|
|Naam|1..1|[string](http://www.w3.org/2001/XMLSchema#string)|

