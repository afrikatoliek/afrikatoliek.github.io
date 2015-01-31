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

images(GrinderContext context) {
  context.log("image setup");

// convert cover01.jpeg -resize 200x200 -background white -gravity center -extent 1024x480 -flatten cover01_flatten.jpeg
// convert cover01_flatten.jpeg -level -90% cover01_contrast.jpeg
// convert cover01_flatten.jpeg -level 90% cover01_dark.jpg
// convert cover01_flatten.jpeg +level-colors grey, cover01_light.jpeg
// convert cover01.jpeg -resize 50% cover01_small.png
// convert high_quality.png -quality 30 low_quality.jpg
// convert color.png -colorspace Gray gray.png
// convert dark.png -modulate 80 light.jpg

  // http://www.dartdocs.org/documentation/grinder/0.6.6+2/index.html#grinder/grinder
  // http://www.dartdocs.org/documentation/grinder/0.6.6+2/index.html#grinder/grinder-tools
  // http://www.dartdocs.org/documentation/grinder/0.6.6+2/index.html#grinder/grinder-files

  const images = "images";
  const input = "unsorted";
  const wikimedia = "commons.wikimedia.org";
  const output = "web";

  var args = "$input/$wikimedia/unsorted01.jpg -modulate 80 $output/$wikimedia/unsorted01.jpg".split(" ");
  runProcess(context, "convert", arguments: args, workingDirectory: images);
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
