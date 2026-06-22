# Begrippen
java -jar ~/GITREPO/rdf2xml/target/rdf2xml.jar begrippen.ttl media/begrippen.graphml ~/GITREPO/rdf2xml/skos2graphml.xsl ext media/begrippen-edited.graphml
java -jar ~/GITREPO/rdf2xml/target/rdf2xml.jar begrippen.ttl media/begrippen.md ~/GITREPO/rdf2xml/skos2md.xsl diagram

# Ontologie (merge begrippen voor verwijzingen en opname definitie)
java -jar ~/GITREPO/rdf2rdf/target/rdf2rdf.jar -i ontologie.ttl -i2 begrippen.ttl -c merge.yaml -o totaal.ttl
java -jar ~/GITREPO/rdf2xml/target/rdf2xml.jar totaal.ttl media/ontologie.graphml ~/GITREPO/rdf2xml/rdf2graphml.xsl add media/ontologie-edited.graphml
java -jar ~/GITREPO/rdf2xml/target/rdf2xml.jar totaal.ttl media/ontologie.md ~/GITREPO/rdf2xml/rdf2md.xsl
rm totaal.ttl

# Voorbeelduitwerking, laag 1
java -jar ~/GITREPO/rdf2rdf/target/rdf2rdf.jar -i voorbeeld.ttl -i2 shape-laag1.ttl -o totaal.ttl
java -jar ~/GITREPO/rdf2xml/target/rdf2xml.jar totaal.ttl media/kennisgraaf-laag1.graphml ~/GITREPO/rdf2xml/ld2graphml.xsl shaped media/kennisgraaf-laag1-edited.graphml
rm totaal.ttl
# Voorbeelduitwerking, laag 2
java -jar ~/GITREPO/rdf2rdf/target/rdf2rdf.jar -i voorbeeld.ttl -i2 shape-laag2.ttl -o totaal.ttl
java -jar ~/GITREPO/rdf2xml/target/rdf2xml.jar totaal.ttl media/kennisgraaf-laag2.graphml ~/GITREPO/rdf2xml/ld2graphml.xsl shaped media/kennisgraaf-laag2-edited.graphml
rm totaal.ttl

# Genereren distributie-bestand (puur html)
npx respec -s ./media/index.html -o ./dist/index.html --localhost
