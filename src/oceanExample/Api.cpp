#include <string>
#include <vector>
#include <iostream>
#include <unordered_map>
#include <math.h>

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
#define Y_OFFSET 150.0f
#define Z_OFFSET 0.0f
#define SPEED 50.0f

osg::ref_ptr<osg::PositionAttitudeTransform> addASV(osg::ref_ptr<Scene> &scene, int width, int height, int length)
{
	osg::ref_ptr<osg::PositionAttitudeTransform> boatTransform;

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

    boatTransform = new osg::PositionAttitudeTransform;
    boatTransform->addChild(boat.get());

    scene->getOceanScene()->addChild(boatTransform.get());

    return boatTransform;
}

void moveASV(osg::ref_ptr<osg::PositionAttitudeTransform> &boatTransform, float x, float y, float z, float yaw, float roll, float pitch)
{
	boatTransform->setPosition(osg::Vec3f(
		(x*SPEED)+X_OFFSET,
		(y*SPEED)+Y_OFFSET,
		z+Z_OFFSET
	));

	float offset = 0.01;
	yaw *= offset;
	roll *= offset;
	pitch *= offset;

	osg::Quat quat = osg::Quat(
		sin(roll) * cos(pitch) * cos(yaw) - cos(roll) * sin(pitch) * sin(yaw),
	    cos(roll) * sin(pitch) * cos(yaw) + sin(roll) * cos(pitch) * sin(yaw),
	    cos(roll) * cos(pitch) * sin(yaw) - sin(roll) * sin(pitch) * cos(yaw),
	    cos(roll) * cos(pitch) * cos(yaw) + sin(roll) * sin(pitch) * sin(yaw)
	);

	boatTransform->setAttitude(quat);
	// osg::Matrix mat = osg::Matrix::translate(osg::Vec3f(
	// 	(x*SPEED)+X_OFFSET,
	// 	(y*SPEED)+Y_OFFSET,
	// 	z+Z_OFFSET
	// ));

	// const double angle = 90;
	// const osg::Vec3d axis(x, y, z);
	// boatTransform->setMatrix(mat * osg::Matrix::rotate(angle, axis));
	// // std::cout << (x*SPEED)+X_OFFSET << " " << (y*SPEED)+Y_OFFSET << " " << z+Z_OFFSET << "\n";
}

void Api::parse(std::string str, osg::ref_ptr<Scene> &scene) {
	std::vector<std::string> tokens;
	std::istringstream ss(str);
	std::string token;
	while (ss >> token) {
		tokens.push_back(token);
	}

	if (tokens[0] == "CREATE") {
		asvList[std::stod(tokens[1])] = addASV(scene, std::stod(tokens[2]), std::stod(tokens[3]), std::stod(tokens[4]));
	} else if (tokens[0] == "MOVE") {
		moveASV(
			asvList[std::stod(tokens[1])],
			std::stod(tokens[2]),
			std::stod(tokens[3]),
			std::stod(tokens[4]),
			std::stod(tokens[5]),
			std::stod(tokens[6]),
			std::stod(tokens[7])
		);
	}
}