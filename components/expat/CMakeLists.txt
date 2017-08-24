add_library(expat STATIC
	library/xmlparse.c
	library/xmlrole.c
	library/xmltok.c
	library/xmltok_ns.c
	library/xmltok_impl.c
	port/chardata.c
	port/expat_element.c
	port/minicheck.c
)

target_include_directories(expat PUBLIC
	include
)

target_include_directories(expat PRIVATE
	include/expat
	port/include
)
