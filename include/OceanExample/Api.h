#include <string>
#include <vector>
#include <iostream>
#include <unordered_map>

// For piping
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <errno.h>
#include <fcntl.h>

#include <osgViewer/Viewer>
#include <osgViewer/CompositeViewer>

#include <osgViewer/ViewerEventHandlers>

#include <osgGA/StateSetManipulator>

#include <osg/Notify>
#include <osg/Geode>
#include <osg/ShapeDrawable>

#include <osgDB/ReadFile>

#include <osgShadow/ShadowedScene>
#include <osgShadow/ViewDependentShadowMap>

#include <osgOcean/OceanScene>
#include <osgOcean/Version>
#include <osgOcean/ShaderManager>

#include "SceneEventHandler.h"
#include "Scene.h"
#include "TextHUD.h"

class Api
{
public:
	void parse(std::string str, osg::ref_ptr<Scene> &scene);
	std::unordered_map<int,osg::ref_ptr<osg::PositionAttitudeTransform>> asvList;
};