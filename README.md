# mappings
Mappings and Translators

This repository lists publicly available mappings (or translators) for 
converting from source data formats (or data models or vocabularies) to 
target data formats (or data models or vocabularies).
The contents can be viewed in several ways:
* [Browse the github file structure,](https://github.com/mappinghub/mappings) 
by mapping language, source format, and target format.
* [By source format, target format and mapping language](https://github.com/mappinghub/views/sourceformat-targetformat-mappinglanguage.html) (generated view)
* [By target format, source format and mapping language](http://example/) (generated view)
* [By source term](http://example/) (generated view)
* [By target term](http://example/) (generated view)

# How to Contribute

Mappings may be created as .jsonld files in the mappings/ directory
 * The build script ignores .md files, so you may place any needed documentation alongside contributed mappings
 * Currently, all levels of the directory structure must include a metadata.json file, even if it's just an empty object -- this should change soon
