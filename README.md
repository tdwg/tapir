# TDWG Access Protocol for Information Retrieval (TAPIR)

TAPIR is a computer protocol designed for discovery, search and retrieval of distributed data over the Internet. TAPIR consists of a [specification](http://www.tdwg.org/dav/subgroups/tapir/1.0/docs) that determines how client applications seeking information should communicate with server applications hosting data. TAPIR is an approved TDWG standard. 

> Renato De Giovanni, Markus Döring, Anton Güntsch, Dave Vieglais, Donald Hobern, Javier de la Torre, John Wieczorek, Robert Gales, Roger Hyam, Stanley Blum, Steven Perry. 2010. TDWG Access Protocol for Information Retrieval (TAPIR), Release 1.0, 2009-09-09. http://www.tdwg.org/standards/449

# Motivation

[DiGIR](http://www.digir.net/) and [BioCASe](http://www.biocase.org/products/protocols/) are alternative protocols developed to access historical data from geographically distributed biological collections. While DiGIR and BioCASe have been successful in their own domains, incompatibilities between them make the exchange of biodiversity data more complex than it should be. TAPIR, the TDWG Access Protocol for Information Retrieval, is an international project to solve this problem and to add new functionality.

# How TAPIR works

A TAPIR network comprises distributed data providers with different database systems and different data structures, but all of them having the same kind of content. Consider a group of natural history museums that want to make their biological specimen data available from a single Web search page. Each organization has its own database in a different computer environment. For example, some may use a commercial collection management software, others may use an open source software environment, or even just a simple spreadsheet. Their common requirement is for all searches via a single Web page to access all databases and produce a combined and integrated response to the searcher.

Since all databases contain the same kind of content, it is therefore possible to define what is called a data abstraction layer. DarwinCore is an example of a data abstraction layer for biodiversity data. DarwinCore specifies the details of a specimen or observation of a specimen, such as the name of the organism, where, when and by whom it was collected. TAPIR works with one or more of these data abstraction layers to make it appear to the searcher that all the separate databases are like one big integrated database.

The data providers usually don't need to change their databases nor to periodically export their data. Instead, they will typically install a 'wrapper' software application and then configure it in a way that each concept from the data abstraction layer corresponds to a particular field in their own databases.

This wrapper receives the remote TAPIR search request, translates it into the local language and data structure, applies it to the database, and then sends back a TAPIR search response to the searcher.

TAPIR is flexible enough to be used in a wide range of applications. Other examples include harvesting data to build a central database, sharing data using different Web formats (e.g. RSS, RDF or KML) or building Web interfaces to help browse or search any database.

# TAPIR's key features

 - integrates well with the Web infrastructure because it is based on established international Web standards like HTTP, XML and XML Schema.
 - is independent of the data being exchanged and therefore can be used to access a wide range of data.
 - can return data in many different formats - search responses are flexible and customizable.
 - includes five operations to cover all necessary aspects for searching and retrieving data in a network: access to metadata (descriptive data) and capabilities of the provider, preliminary data discovery and data mining, searching, and monitoring the data provider service.
 - allows all operations to be invoked through simple Web addresses.
 - supports complex requests.
 - has existing TAPIR wrapper applications including PyWrapper, TapirLink and TapirDotNET.
