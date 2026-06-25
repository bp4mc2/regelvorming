# Toepassingsprofiel
![](profiel.svg "profiel")


## Klassen

### Actor {#TActor}

|URI|http://bp4mc2.org/regelvorming#Actor|
|-|-|
|Definitie|Een persoon die iets doet|

|Eigenschap|Kardinaliteit|Datatype/klasse|
|----------|-------------|---------------|

### Begrip {#TBegrip}

|URI|http://www.w3.org/2004/02/skos/core#Concept|
|-|-|
|Definitie|Een begrip is een eenheid van denken - een idee, de betekenis die begrepen moet worden met een term|

|Eigenschap|Kardinaliteit|Datatype/klasse|
|----------|-------------|---------------|

### Bepaling {#TBepaling}

|URI|http://bp4mc2.org/regelvorming#Bepaling|
|-|-|
|Definitie|Een bepaling is een duiding van de regel die met een tekstfragment wordt gegeven|

|Eigenschap|Kardinaliteit|Datatype/klasse|
|----------|-------------|---------------|
|invulling van|0..n|[Bepaling](#TBepaling)|
|verwijst naar|0..n|[Begrip](#TBegrip)|
|beschrijft|0..n|[Begrip](#TBegrip)|
|soort|1..1|[Bepalingsoorten](#TBepalingsoorten)|
|beperkt|0..1|[Bepaling](#TBepaling)|
|op grond van|1..1|[Fragment](#TFragment)|
|grondslag|0..n|[Bepaling](#TBepaling)|
|normeert|0..1|[Handeling](#THandeling)|

### Bron {#TBron}

|URI|http://data.europa.eu/eli/ontology#LegalResource|
|-|-|
|Definitie|Een bron is een duurzaam toegankelijk document dat dient als grondslag of interpretatie van het gegeven recht|

|Eigenschap|Kardinaliteit|Datatype/klasse|
|----------|-------------|---------------|
|titel|1..1|[string](http://www.w3.org/2001/XMLSchema#string)|

### Fragment {#TFragment}

|URI|http://data.europa.eu/eli/ontology#LegalResourceSubdivision|
|-|-|
|Definitie|Een fragment is een onderscheidbaar onderdeel in een bron|

|Eigenschap|Kardinaliteit|Datatype/klasse|
|----------|-------------|---------------|
|titel|1..1|[string](http://www.w3.org/2001/XMLSchema#string)|
|verwijst naar|0..n|[Fragment](#TFragment)|
|inhoud|0..1|[string](http://www.w3.org/2001/XMLSchema#string)|
|onderdeel van|1..1||

### Handeling {#THandeling}

|URI|http://bp4mc2.org/regelvorming#Handeling|
|-|-|
|Definitie|Een handeling is een gebeurtenis zoals die plaatsvindt in de werkelijkheid door toedoen van een actor|

|Eigenschap|Kardinaliteit|Datatype/klasse|
|----------|-------------|---------------|
|naam|1..1|[string](http://www.w3.org/2001/XMLSchema#string)|
|actor|1..1|[Actor](#TActor)|

