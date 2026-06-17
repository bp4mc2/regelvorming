java -jar ~/GITREPO/rdf2xml/target/rdf2xml.jar begrippen.ttl media/begrippen.graphml ~/GITREPO/rdf2xml/skos2graphml.xsl ext media/begrippen-edited.graphml
java -jar ~/GITREPO/rdf2xml/target/rdf2xml.jar begrippen.ttl media/begrippen.md ~/GITREPO/rdf2xml/skos2md.xsl

java -jar ~/GITREPO/rdf2rdf/target/rdf2rdf.jar -i ontologie.ttl -i2 begrippen.ttl -c merge.yaml -o totaal.ttl
java -jar ~/GITREPO/rdf2xml/target/rdf2xml.jar totaal.ttl media/ontologie.graphml ~/GITREPO/rdf2xml/rdf2graphml.xsl add media/ontologie-edited.graphml
java -jar ~/GITREPO/rdf2xml/target/rdf2xml.jar totaal.ttl media/ontologie.md ~/GITREPO/rdf2xml/rdf2md.xsl
rm totaal.ttl

npx respec -s ./media/index.html -o ./dist/index.html --localhost
