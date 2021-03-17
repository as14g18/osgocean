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
#include "Api.h"

#define X_OFFSET 0.0f
#define Y_OFFSET 100.0f
#define Z_OFFSET 5.0f

osg::ref_ptr<osg::MatrixTransform> addCylinder(osg::ref_ptr<Scene> &scene, int width, int height, int length)
{
	osg::ref_ptr<osg::MatrixTransform> boatTransform;

	osg::ref_ptr<osg::Geode> boat = new osg::Geode;
    boat->addDrawable(new osg::ShapeDrawable(new osg::Cylinder(
    	osg::Vec3f(X_OFFSET, Y_OFFSET, Z_OFFSET),
    	width,
    	height
    )));

    boat->setNodeMask( scene->getOceanScene()->getNormalSceneMask()    | 
                       scene->getOceanScene()->getReflectedSceneMask() | 
                       scene->getOceanScene()->getRefractedSceneMask() |
                       CAST_SHADOW | RECEIVE_SHADOW );

    boatTransform = new osg::MatrixTransform;
    boatTransform->addChild(boat.get());

    scene->getOceanScene()->addChild(boatTransform.get());

    return boatTransform;
}

void moveCylinder(osg::ref_ptr<osg::MatrixTransform> &boatTransform, float x, float y, float z)
{
	boatTransform->setMatrix(osg::Matrix::translate(osg::Vec3f(x+X_OFFSET, y+Y_OFFSET, z+Z_OFFSET)));
}

void Api::parse(std::string str, osg::ref_ptr<Scene> &scene) {
	std::vector<std::string> tokens;
	std::istringstream ss(str);
	std::string token;
	while (ss >> token) {
		tokens.push_back(token);
	}

	if (tokens[0] == "CREATE") {
		asvList[std::stoi(tokens[1])] = addCylinder(scene, std::stoi(tokens[2]), std::stoi(tokens[3]), std::stoi(tokens[4]));
	} else if (tokens[0] == "MOVE") {
		moveCylinder(
			asvList[std::stoi(tokens[1])],
			std::stoi(tokens[2]),
			std::stoi(tokens[3]),
			std::stoi(tokens[4])
		);
	}
}