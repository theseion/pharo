initialize-release
initialize

	super initialize.
	statistics := PBBootstrapStatistics new.
	logger := PBBootstrapLogger new.
	imageFileReference := 'bootstrap.image' asFileReference.

	"the default espell backend for the bootstrap"
	self initializeBackend.
	self instantiateClassLoader.