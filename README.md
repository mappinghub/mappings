# mappings
This repository lists publicly available mappings (aka translators) for 
converting from source data to target data.  Mapping definitions can be viewed in two ways:
* through the [Mapping Hub](https://mappinghub.org/) website; or
* by manually browsing the [github file structure](https://github.com/mappinghub/mappings) that drives the Mapping Hub website.  Each available mapping is described in a **mapping definition file**, which is a .jsonld file that contains metadata about that mapping and includes a link to its implementation.  Mapping definition files are organized by mapping language, source type, source type version, target type, and target type version.

# How to Contribute
To register a new mapping with the Mapping Hub:
1. If your mapping uses a source or target type that has not already been registered with the Mapping Hub, you should register that source or target type using the instructions in the [elements repo](http://www.github.com/mappinghub/elements).
2. Create a .jsonld mapping definition file, describing your mapping.  Browse the existing [mappings directory](https://github.com/mappinghub/mappings/tree/master/mappings) in this repo for examples.
3. Place your mapping definition file in the appropriate subdirectory of the [mappings directory](https://github.com/mappinghub/mappings/tree/master/mappings) in the master branch of this repo.  The appropriate subdirectory will depend on the source and target types of your mapping.  To avoid having too many files in one subdirectory, mapping definition files are organized in a hierarchy of subdirectories based on (in this order): primary mapping implementation language, source type, source type version, target type, and target type version.  For example, the mapping definition for a mapping, written in javascript, from source type S version 1.1 to target type T version 3.2 should be placed in a subdirectory called mappings/js/S/v1.1/T/v3.2 .  If a mapping uses multiple source types, choose whichever source type you think best reflects the main purpose of the mapping, and place the mapping definition under that subdirectory tree.  Do the same if the mapping uses multiple target types.  Do not replicate the same mapping definition under multiple source trees. 
5. If desired, you may add another level of subdirectory and place any additional documentation (markdown/html) in that subdirectory, next to your mapping definition.  Any file without a .jsonld extension will be ignored by the github action that generates the Mapping Hub views.
6. Place a metadata.json file in any subdirectory that you added.  The file should contain any properties that are common to any mapping definitions in that subdirectory and below, unless overridden.  This allows common properties to be factored out and specified once, in an ancestor directory, instead of replicating them in every mapping defition.  Every level of subdirectory below the [mappings directory](https://github.com/mappinghub/mappings/tree/master/mappings) must contain a metadata.json file, even if the file only defines an empty JSON object.  (Hopefully this requirement will be changed soon.)  See an existing example for syntax.
7. If all goes well, a [github action script](https://github.com/mappinghub/mappinghub.github.io/actions) will automatically do the rest, to make your mapping visible in the Mapping Hub.  Check the [log](https://github.com/mappinghub/mappinghub.github.io/actions) if you think something went wrong.





