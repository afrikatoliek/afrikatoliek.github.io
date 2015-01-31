import 'dart:io';
import 'package:grinder/grinder.dart';

void main([List<String> args]) {
  task('build', Pub.build);
  task('init', init);
  task('images', images);
  task('compile', compile, ['init']);
  task('deploy', deploy, ['compile']);
  task('docs', deploy, ['init']);
  task('all', null, ['deploy', 'docs']);

  startGrinder(args);
}

/**
 * Hierdie styl verander a prent van kleur na grys.
 */
prent01(GrinderContext context, srcPath, destPath) {

// convert cover01.jpeg -resize 200x200 -background white -gravity center -extent 1024x480 -flatten cover01_flatten.jpeg
// convert cover01_flatten.jpeg -level -90% cover01_contrast.jpeg
// convert cover01_flatten.jpeg -level 90% cover01_dark.jpg
// convert cover01_flatten.jpeg +level-colors grey, cover01_light.jpeg
// convert cover01.jpeg -resize 50% cover01_small.png
// convert high_quality.png -quality 30 low_quality.jpg
// convert color.png -colorspace Gray gray.png
// convert dark.png -modulate 80 light.jpg

  // gebruik SublimeText om die volgende leers te besigtig:
  // packages/grinder/grinder_files.dart
  // packages/grinder/grinder_tools.dart
  // packages/grinder/grinder.dart

  context.log("prent01");

  // resize all images to 1024x768
  var instructions = [
  	//"$srcPath -resize 1024x768 -background black -gravity center -extent 1024x768 -flatten $destPath",
  	"$srcPath -resize 1024x768 $destPath",
  	"$destPath -colorspace Gray $destPath",
  	"$destPath -quality 70 $destPath",
  	//"$destPath -modulate 100 $destPath",
  ];

  // voer die 'convert' instruksie uit (benodig 'sudo apt-get install imagemagick')
  for (var ins in instructions) {
	  var args = ins.split(" ");
	  runProcess(context, "convert", arguments: args);
  }
}

images(GrinderContext context) {
  const wikimedia = "commons.wikimedia.org";
  const subtlepatterns = "subtlepatterns.com";
  const src = "images/unsorted";
  const dest = "images/web";

  // jpg verklein beter as png
  prent01(context, "$src/$wikimedia/unsorted01.jpg", "$dest/$wikimedia/unsorted01.jpg");
  prent01(context, "$src/$subtlepatterns/tree_bark.png", "$dest/$subtlepatterns/tree_bark.jpg");
}

init(GrinderContext context) {
  context.log("init setup");
}

compile(GrinderContext context) {
  context.log("compile setup");
}

deploy(GrinderContext context) {
  context.log("deploy setup");
}
