# mappings
This repository lists publicly available mappings (aka translators) for 
converting from source data to target data.  The Mapping Hub does not store the executable or source code that implements these mappings.
Rather, it holds metadata describing the available mappings, with links to the executable or source code that implements the mappings.

Mappping descriptions can be viewed in several ways:
* [Browse the github file structure,](https://github.com/mappinghub/mappings) 
by mapping language, source format, and target format.
* [By source format, target format and mapping language](https://github.com/mappinghub/views/sourceformat-targetformat-mappinglanguage.html) (generated view)
* [By target format, source format and mapping language](http://example/) (generated view)
* [By source term](http://example/) (generated view)
* [By target term](http://example/) (generated view)

# How to Contribute
To tell the Mapping Hub about an available mapping, create a mapping manifest .jsonld file to describe the mapping, and place that file in the appropriate subdirectory of the [mappings directory](https://github.com/mappinghub/mappings/tree/master/mappings) in this repo.  The build script defined in the [views repo](https://github.com/mappinghub/views) ignores all but .jsonld files, so you may place any needed additional documentation (markdown/html) alongside contributed mappings.  Browse the existing [mappings directory](https://github.com/mappinghub/mappings/tree/master/mappings) in this repo for examples.

Mapping manifest files are organized in a hierarchy of subdirectories based on:
* source type;
* source type version;
* target type; and
* target type version.
For example, the mapping manifest for a mapping from source type S version 1.1 to target type T version 3.2 would be placed in a subdirectory called mappings/S/v1.1/T/v3.2 .

If a mapping uses multiple source types, such as S1 and S2, choose whichever source type you think best reflects the main purpose of the mapping, and place the mapping manifest under that subdirectory tree, such as only under S1.  Do not replicate the same mapping manifest under multiple source trees.  Similarly, if the mapping produces multiple target types, pick the most important one when deciding where to place the mapping manifest.

Every level of subdirectory below the [mappings directory](https://github.com/mappinghub/mappings/tree/master/mappings) also must contain a metadata.json file, even if the file only defines an empty JSON object. 
Properties defined in a metadata.json will apply to all mappings below it in the directory hierarchy, except for any properties that are overridded in a lower directory.  This allows common properties to be factored out and specified once, in an ancestor directory, instead of replicating them in every mapping manifest.



